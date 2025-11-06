proto_list1 = "3,6,9,12"
proto_list2 = "A;C;M;E"
proto_list3 = "space delimited string"
proto_list4 = "Comma-spaces, might, require, typing, caution"

strings = [proto_list1, proto_list2, proto_list3, proto_list4]

# a) Use the 'in' method to check to see if the words in each string are separated by commas (,), semicolons (;) or just spaces.
for s in strings:
    print(f"\nOriginal string: {s}")
# b) If the string uses commas to separate the words, split it into an array, reverse the entries, and then join the array into a new comma separated string.
    if ',' in s:
        delimiter = ','
        print("Detected delimiter: comma")
        # b) Handle comma: split, reverse, join
        items = s.split(delimiter)
        items.reverse()
        result = ','.join(items)

# c) If the string uses semicolons to separate the words, split it into an array, alphabetize the entries, and then join the array into a new comma separated string.
    elif ';' in s:
        delimiter = ';'
        print("Detected delimiter: semicolon")
        # c) Handle semicolon: split, sort, join
        items = s.split(delimiter)
        items.sort()
        result = ','.join(items)

# d) If the string uses spaces to separate the words, split it into an array, reverse alphabetize the entries, and then join the array into a new space separated string.
    elif ' ' in s:
        delimiter = ' '
        print("Detected delimiter: space")
        # d) Handle space: split, reverse sort, join
        items = s.split(delimiter)
        items.sort(reverse=True)
        result = ' '.join(items)

# e) If the string uses ‘comma spaces’ to separate the list, modify your code to produce the same result as part “b”, making sure that the extra spaces are NOT part of the final string.
    elif ', ' in s:
        delimiter = ', '
        print("Detected delimiter: comma-space")
        # e) Handle comma-space: split, strip, reverse, join
        items = [item.strip() for item in s.split(delimiter)]
        items.reverse()
        result = ','.join(items)
    else:
        print("No known delimiter found.")
        result = s