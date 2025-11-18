"""
## Creating a Series from a Dictionary

- A Python dictionary is a data structure which maps keys to a set of values.
- A dictionary contains key-value pairs.
- A series is similar to a dictionary in a way that it maps given indexes to a set of values.

Let's see how to create a series from a dictionary

I have a dictionary that represents fruits and prices. Let's create a series from this dictionary
"""
import pandas as pd

fruit_prices = {
    "Apple": 120,
    "Banana": 40,
    "Cherry": 250,
    "Mango": 150
}

s_fruits = pd.Series(fruit_prices)

# Attempting to access Grapes
print(s_fruits["Grapes"])   
