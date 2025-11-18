"""

"""

import pandas as pd

# Create the series
s1 = pd.Series([10, 20, 30, 40, 50])
s_tuple = pd.Series(("apple", "banana", "cherry"))
s_dictionary = pd.Series({"brand": "Ford", "model": "Mustang", "year": 1964})

# Print values and index for each series
print("The s1 series values are:", s1.values)
print("The s1 index values are:", s1.index)
print("\n")
print("The s_tuple series values are:", s_tuple.values)
print("The s_tuple index values are:", s_tuple.index)
print("\n")
print("The s_dictionary series values are:", s_dictionary.values)
print("The s_dictionary index values are:", s_dictionary.index)
