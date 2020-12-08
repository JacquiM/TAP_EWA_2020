# https://www.practicepython.org/exercise/2014/01/29/01-character-input.html

import datetime

while(True):
    name = input("Enter your name: ")
    if(name == ""):
        print("Enter a name value!")
        break;

    age = int(input("Enter your age: "))
    if(age < 1 or age > 100 ):
        print("Enter correct age")
        break;
    year = datetime.datetime.now().year + (100 - age)
    print(f"Hey {name}! Your are going to turn 100 in {year}.\n")