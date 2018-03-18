#!/usr/bin/python3



#https://docs.python.org/3/library/stdtypes.html#sequence-types-list-tuple-range



# ipAddress = input("Please enter an IP address: ")
# print(ipAddress.count("."))

parrot_list = ["non pinin", "a stiff", "no more", "bereft of live"]

for i in parrot_list:
    print("Parrot is {} ".format(i))

even = [2, 4, 6, 8, 10]
odd = [1, 3, 5, 7, 9]

numbers = even + odd
numbers.sort()

print(numbers)
print(sorted(numbers))


