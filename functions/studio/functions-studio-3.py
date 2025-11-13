# 3) Create a new function with one parameter, which is the list we want to change. The function should:
# a) Define and initialize an empty list.
# b) Loop through the old list.
# c) For each element in the old list, call reverse_characters to flip the characters or digits.
# d) Add the reversed string (or number) to the list defined in part ‘a’.
# e) Return the final, reversed list.
# f) Be sure to print the results from each test case in order to verify your code.

def reverse_characters(x):
    if isinstance(x, str):  # a) check if parameter is string
        return ''.join(list(x)[::-1])  # b) reverse string as before
    elif isinstance(x, int):  # c) check if parameter is number
        return int(''.join(list(str(x))[::-1]))  # d) convert to string, reverse, back to int
    else:
        raise TypeError("Only strings and integers are supported")

def reverse_list(old_list):
    # a) Define and initialize an empty list
    new_list = []
    
    # b) Loop through the old list
    for element in old_list:
        # c) Call reverse_characters for each element
        reversed_element = reverse_characters(element)
        
        # d) Add the reversed element to new_list
        new_list.append(reversed_element)
    
    # e) Return the final reversed list
    return new_list


list_test1 = ['apple', 'potato', 'Capitalized Words']
list_test2 = [123, 8897, 42, 1168, 8675309]
list_test3 = ['hello', 'world', 123, 'orange']

print(reverse_list(list_test1))
print(reverse_list(list_test2))
print(reverse_list(list_test3))