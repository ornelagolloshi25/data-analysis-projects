# 3) Create a new function with one parameter, which is the list we want to change. The function should:
# a) Define and initialize an empty list.
# b) Loop through the old list.
# c) For each element in the old list, call reverse_characters to flip the characters or digits.
# d) Add the reversed string (or number) to the list defined in part ‘a’.
# e) Return the final, reversed list.
# f) Be sure to print the results from each test case in order to verify your code.


# i used the reverse_characters function
def reverse_characters(x):
    if type(x) == str:  # check if the parameter is string
        return ''.join(list(x)[::-1])  # reverse string
    elif type(x) == int:  # check if the parameter is number
        return int(''.join(list(str(x))[::-1]))  # reverse digits and convert back to int
    else:
        raise TypeError("Only strings and integers are supported")

# 3) New function to reverse a list
def reverse_list(old_list):
    # a) Define and initialize an empty list
    new_list = []
    
    # b) Loop through the old list
    for element in old_list:
    # c) Call reverse_characters for each element
        reversed_element = reverse_characters(element)
     # d) Add the reversed element to the new list
        new_list.append(reversed_element)
    
    # e) Return the final reversed list
    return new_list[::-1]

# f) sample data for testing
list_test1 = ['apple', 'potato', 'Capitalized Words']
list_test2 = [123, 8897, 42, 1168, 8675309]
list_test3 = ['hello', 'world', 123, 'orange']

print(reverse_list(list_test1))
print(reverse_list(list_test2))
print(reverse_list(list_test3))

