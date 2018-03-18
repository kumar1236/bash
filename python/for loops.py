#!/usr/bin/python


# name=input("Please enter a number string: \n")
#
# for i in range (0, len(name)):
#     if name[i] in '0123456789':
#         print(name[i],end='')
# else:
#     print(name[i], end='')


#############################################################

#############################################################

# number= "56,45,6,367,22,4,5222"
# cleanedNumber= ''
#
# for char in number:
#     if char in '0123456789':
#         cleanedNumber= cleanedNumber + char
# print(cleanedNumber)
#
# trst= '' + "dewdww"
# print(trst)





n=int(input("How many tables? \n"))

for i in range (1, n):
    for j in range (1, 11):
        print("{0} X {1} = {2}".format(i,j,i*j))
    print("=========")



















