# https://www.practicepython.org/exercise/2014/04/02/09-guessing-game-one.html

from random import randint
count = 0

print("You get 5 guesses\n\n")



while(count < 6):
    num = randint(1, 100)

    guess = int(input("Guess a number between 1 and 100: "))

    if num == guess:
        print(f"Original: {num}. You guessed just right!\n")
    elif num < guess:
        print(f"Original: {num}. You guessed too low.\n")
    else:
        print(f"Original: {num}. You guessed too high.\n")

    count += 1

