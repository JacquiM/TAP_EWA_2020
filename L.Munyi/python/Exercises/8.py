# https://www.practicepython.org/exercise/2014/03/26/08-rock-paper-scissors.html

import random
from random import randint

print ("ROCK-PAPER-SCISSORS!\n")

def play_game(user ,computer):
    if user == 1 and computer == 1:
        print ("Tie!/n")
        print ("Computer: " + scoreboard['computer'] + "\n" + name + ": " + scoreboard['user'] + "\n")
    elif user == 1 and computer == 2:
        print(name + " has won!\n")
        x = int(scoreboard['user'])
        scoreboard['user'] = str (x+1)
        print ("Computer: " + scoreboard['computer'] + "\n" + name + ": " + scoreboard['user'] + "\n")
    elif user == 1 and computer == 3:
        print("Computer has won!\n")
        x = int (scoreboard['computer'])
        scoreboard['computer'] = str (x+1)
        print ("Computer: " + scoreboard['computer'] + "\n" + name + ": " + scoreboard['user'] + "\n")
    elif user == 2 and computer == 1:
        print(name + " has won!\n")
        x = int (scoreboard['user'])
        scoreboard['user'] = str (x+1)
        print ("Computer: " + scoreboard['computer'] + "\n" + name + ": " + scoreboard['user'] + "\n")
    elif user == 2 and computer == 2:
        print("Tie!\n")
        print ("Computer: " + scoreboard['computer'] + "\n" + name + ": " + scoreboard['user'] + "\n")
    elif user == 2 and computer == 3:
        print("Computer has won!\n")
        x = int(scoreboard['computer'])
        scoreboard['computer'] = str(x+1)
        print ("Computer: " + scoreboard['computer'] + "\n" + name + ": " + scoreboard['user'] + "\n")
    elif user == 3 and computer == 1:
        print("Computer has won!\n")
        print ("Computer: " + scoreboard['computer'] + "\n" + name + ": " + scoreboard['user'] + "\n")
    elif user == 3 and computer == 2:
        print(name + " has won!\n")
        x = int (scoreboard['user'])
        scoreboard['user'] = str (x+1)
        print ("Computer: " + scoreboard['computer'] + "\n" + name + ": " + scoreboard['user'] + "\n")
    else:
        print("Tie!\n")
        print ("Computer: " + scoreboard['computer'] + "\n" + name + ": " + scoreboard['user'] + "\n")

def get_user_move(opponent_move):
    move = int(input("Make a choice\n\t1. Rock\n\t2. Paper\n\t3. Scissors\n\t4. Exit\t\n"))
    if move == 1 or move == 2 or move == 3:
        print ("You have selected " + str(move) + " The computer has selected " + str(opponent_move))
        return (opponent_move, move)
        pass
    elif move == 4:
        print ("Exiting..")
        choice = 2
        pass
name = input("Enter name\n")
choice = input("\t1. Start game\n\t2. Show results\n\t3. Exit\n")
scoreboard = {'computer': '0', 'user': '0'}

while choice == '1':
    comp_move = randint(1, 3)
    print (comp_move)
    user, computer = get_user_move(comp_move)
    if user == 0:
        exit()
    else:
        play_game(user, computer)
        pass
    pass
if choice == 2:
    print ("Computer: " + scoreboard['computer'] + "\n" + name + ": " + scoreboard['user'] + "\n")
    pass