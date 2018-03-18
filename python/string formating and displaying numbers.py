#!/usr/bin/python3


age=32
age2=33
print("My age is " + str(age) + " Years")

print("My age is {0} Years".format(age))

print("My age is {1} Years".format(age,age2))


print("There are {0} days in {1}, {2}, {3}, {4}, {5}, {6} and {7}".format(31, "jan", "mar", "may", "jul", "aug", "oct", "dec"))

print("My age is %d years" % age)

print("My age is {0} years".format(age))

print("My %s is %d %s" % ("age", age, "years"))


for i in range(1, 12):
    print("No %2d squared is %4d cubbed is %4d" % (i, i ** 2 , i ** 3))

#same as above in python 3

for i in range(1, 12):
    print("No {0:2} squared is {1:4} cubbed is {2:4}".format(i, i ** 2 , i ** 3))


print("pi id approximately %12.50f" % (22 / 7))
print("pi id approximately {0:12.51}".format(22 / 7))






