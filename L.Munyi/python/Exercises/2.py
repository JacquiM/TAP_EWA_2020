# https://www.practicepython.org/exercise/2014/02/05/02-odd-or-even.html

while(True):
    number = int(input("Enter any number: "))

    if(number % 2 == 0):
        print(f"{number} is an even number.\n")
    else:
        print(f"{number} is an odd number.\n")