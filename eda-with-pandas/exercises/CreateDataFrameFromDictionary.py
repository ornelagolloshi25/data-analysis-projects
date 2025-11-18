"""
## Create a DataFrame from a Dictionary

Let's say we have 2 series of heights and weights of the same set of persons and we want to put it together in a table.

Here we can create dictionary using both series and create a DataFrame using the Pandas ``.DataFrame()`` method.
"""
import pandas as pd

# Height series
heights = pd.Series([5.3, 6.2, 5.8, 5.0, 5.5], 
                    index=['Person 1','Person 2','Person 3','Person 4','Person 5'],
                    name="Height (ft)")

# Weight series
weights = pd.Series([65, 89, 75, 60, 59], 
                    index=['Person 1','Person 2','Person 3','Person 4','Person 5'],
                    name="Weight (kg)")

# Create DataFrame from dictionary of series
df = pd.DataFrame({
    "Height (ft)": heights,
    "Weight (kg)": weights
})

# Print the DataFrame
print(df)
