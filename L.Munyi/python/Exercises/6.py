# https://www.practicepython.org/exercise/2014/03/12/06-string-lists.html

def isPalindrome(text):
    if(len(text.split(" ")) > 1):
        sentence = "".join(text.split(" "))
        reverse = sentence[::-1]

        if(sentence.lower() == str(reverse).lower()):
            print("The sentence is a palindrome")
            return

        print("The sentence is not a palindrome")

    else:
        # Word
        if(text.lower() == text[::-1].lower()):
            print(f"{text} is a palindrome")
            return

        print(f"{text} is not a palindrome")

text = input("Enter a word or sentence\n")

isPalindrome(text)