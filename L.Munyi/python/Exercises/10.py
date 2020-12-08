# https://www.practicepython.org/exercise/2014/04/10/10-list-overlap-comprehensions.html

from random import randint

list1 = []
list2 = []
list3 = []

# Create random list of random length
for x in range(0,randint(5,50)):
    list1.append(str(randint(0, 100)))
for x in range(0,randint(5,50)):
    list2.append(str(randint(0, 100)))

print("Original List 1: " + ", ".join(list1) + '\n')
print("Clean List 1: " + ", ".join(set(list1)) + '\n')
print("Original List 2: " + ", ".join(list2) + '\n')
print("Clean List 2: " + ", ".join(set(list2)) + '\n')

if(len(set(list1)) < len(set(list2))):
    for item in set(list1):
        if(item in list2):
            list3.append(item)
else:
    for item in set(list2):
        if(item in set(list2)):
            list3.append(item)

print(f"Common elements are: " + ", ".join(set(list3)))