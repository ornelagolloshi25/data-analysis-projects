# 2) The 'split' method does not work on numbers, but we want the function to return a number with all the digits reversed (e.g. 1234 converts to 4321 and NOT the string "4321")
# a) Add an if statement to your reverse_characters function to check the typeof the parameter.
# b - d) If type is ‘string’, return the reversed string as before. If type is ‘number’, convert the parameter to a string, reverse the characters, then convert it back into a number. Return the reversed number.
# e) Be sure to print the result returned by the function to verify that your code works for both strings and numbers. Do this before moving on to the next steps.

def reverse_characters(x):
    if isinstance(x, str):  # a) check if parameter is string
        return ''.join(list(x)[::-1])  # b) reverse string as before
    elif isinstance(x, int):  # c) check if parameter is number
        return int(''.join(list(str(x))[::-1]))  # d) convert to string, reverse, back to int
    else:
        raise TypeError("Only strings and integers are supported")

# Test with a string
my_string = "Python"
print(reverse_characters(my_string))   # Output: nohtyP

# Test with a number
my_number = 1234
print(reverse_characters(my_number))   # Output: 4321