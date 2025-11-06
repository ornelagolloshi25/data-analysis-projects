my_string = "LaunchCode"


# a) Use string methods to remove the first three characters from the string and add them to the end.
my_string = "LaunchCode"
modified = my_string[3:] + my_string[:3]

# Use a template literal to print the original and modified string in a descriptive phrase.
print(f"Original string: '{my_string}' → Modified string: '{modified}'")


# b) Modify your code to accept user input. Query the user to enter the number of letters that will be relocated.
num = input("Enter the number of letters to relocate: ")

# c) Add validation to your code to deal with user inputs that are longer than the word. In such cases, default to moving 3 characters. Also, the template literal should note the error.
try:
    num = int(num)
    if num > len(my_string):
        print(f"Input too large. Defaulting to 3 characters.")
        num = 3
except ValueError:
    print("Invalid input. Defaulting to 3 characters.")
    num = 3

modified = my_string[num:] + my_string[:num]
print(f"Original string: '{my_string}' → Modified string: '{modified}'")