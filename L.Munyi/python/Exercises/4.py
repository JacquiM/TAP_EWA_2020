# https://www.practicepython.org/exercise/2014/02/26/04-divisors.html

number = int(input("Enter any number: "))
assert number > 0, "Enter a number greater than zero"

divisors = []

for value in range(1, number):
    if(number % value == 0):
        divisors.append(str(value))

print(f"The divisors of {number} are: " + ", ".join(divisors))