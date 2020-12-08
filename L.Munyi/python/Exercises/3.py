# https://www.practicepython.org/exercise/2014/02/15/03-list-less-than-ten.html

numbers = input("Enter numbers separated by a comma(,)\n").split(",")
response = []

for number in set(numbers):
    if(int(number) < 5):
        response.append(number)

print("Numbers less that 5 are: " + ', '.join(response))