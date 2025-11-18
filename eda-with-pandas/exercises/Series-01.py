"""
Series

A series is a data type used by Pandas. It is like a one dimensional list, whose elements can be of any data type themselves.
Pandas contains a method, ``.Series()``, that initiates a series object from a Python list, tuple, 
"""

import pandas as pd

# Create the s1 series from the list
s1 = pd.Series([10, 20, 30, 40, 50])
print("s1 Series:")
print(s1)

# Additional practice: create a series from a tuple
s_tuple = pd.Series(("apple", "banana", "cherry"))
print("\ns_tuple Series:")
print(s_tuple)

# Create a series from a dictionary
s_dictionary = pd.Series({"brand": "Ford", "model": "Mustang", "year": 1964})
print("\ns_dictionary Series:")
print(s_dictionary)
