# https://www.practicepython.org/exercise/2014/03/05/05-list-overlap.html

from random import randint

list1 = []
list2 = []
list3 = []
# Create random list of random length
for x in range(0,randint(5,50)):
    list1.append(str(randint(0, 100)))
for x in range(0,randint(5,50)):
    list2.append(str(randint(0, 100)))

print(f"List 1: " + ", ".join(list1) + "\n")
print(f"List 2: " + ", ".join(list2) + "\n")

list1 = set(list1)
list2 = set(list2)

for num in list1:
    if(num in list2):
        list3.append(str(num))

if(len(list3) == 0):
    print("The twi lists have no similar values")
else:
    print("The lists contains the following similar values: " + ", ".join(list3))
