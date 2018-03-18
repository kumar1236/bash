#!/usr/bin/env bash

# Check parameters
if [ "$#" -ne 1 ]; then
     >&2 echo "Illegal number of parameters"
    exit 1
fi
# Check file
if [ ! -f "${1}" ]; then
     >&2 echo "File ${1} not found"
    exit 1
fi
FILE="${1}"

while read eid; do
  beforesync=`doveadm -f table mailbox status -u $eid messages '*' | wc -l`
  echo "Before Sync : $beforesync"
  echo -e "\nExecuting force sync.........."
  doveadm force-resync -u $eid '*'
  if [  $? -ne 0 ]  # Excludes failed force sync accounts.
  then
    echo ${eid} > /tmp/failedforcesync.txt
    continue
  fi
  sleep 1
  echo -e "\n"
  aftersync=`doveadm -f table mailbox status -u $eid messages '*' | wc -l`
  echo "After Sync : $aftersync"
  if [ $beforesync == $aftersync ]; then
   echo "folder counts are matching"
  else
      echo "folder counts are not matching"
      echo "$eid" >> /var/tmp/folder-mismatch-uids.txt
        ### 2nd Force-sync and Messages move
      doveadm force-resync -u $eid '*'
      sleep 1
      echo -e "\n"
      echo "Before copy messages to the Folders of $eid"
      echo "======================================"
      doveadm -f table mailbox status -u $eid messages '*' | grep -i "recovered-lost-folder" | cut -d" " -f1 > /tmp/temp-folders.txt
      result=0
      for i in `cat /tmp/temp-folders.txt`; do
      folder=` echo $i | cut -d"-" -f1`
      echo "Moving messages from ${i} to ${folder}"
      doveadm move -u $eid ${folder} mailbox ${i} all
      if [ $? -eq 0 ] && [ "$(doveadm -f table mailbox status -u $eid messages "${i}" | awk {'print $2'})" == '0' ] ; then
        echo "Removing folder ${i}"
        doveadm mailbox delete -e -u $eid ${i} #Require mailboxes to be empty before deleting.
        result=1;
      fi
      done
       echo -e "\n"
       if [ $result -eq 1 ]; then
        echo $eid >> Final-folder-lost-fix.csv
       fi
  fi
done < ${FILE}




