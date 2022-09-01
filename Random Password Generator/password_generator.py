import string 
import random 

def validate_input():
    while True:
        num = input("What length would you like your password to be? (The recommended length is 12-14 characters.)\n")
        try:
            #convert length to int
            value = int(num)
            if value > 128 or value < 12:
                print("The number entered for length was either too high (> 128) or too low (< 12), please enter in a number that fits that criteria.")
            else:
                break

            #non integer answers
        except ValueError:
            print("You did not enter a number. Please enter an appropriate number length. (The recommended length is 12-14 characters.) \n")
    return value

# a strong password according to Microsoft is:
# 12-14 characters in length and is a combination of uppercase letters, lowercase letters, symbols, and numebrs

lower = string.ascii_lowercase
upper = string.ascii_uppercase
nums = string.digits
symbols = string.punctuation

print("This is a Random Password Generator. \n")

#get length of password
length = validate_input()

#concatenate all characters
psswrd = lower + upper + nums + symbols

temp = random.sample(psswrd, length)

#join the random characters together
psswrd = "".join(temp)

print(f"The password generated for you is: {psswrd}")