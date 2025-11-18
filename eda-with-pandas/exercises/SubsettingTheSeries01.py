"""
## Subsetting the Series

Values inside the series can be accessed using the ``[ ]`` square bracket slicing operation

- Series can be sliced using the default index
- Series can also be sliced using string indices (indexes)

"""

import pandas as pd

# Create the s2 series with custom indexes
s2 = pd.Series([80, 93, 78, 85, 97], index=['English', 'Science', 'Social', 'Tamil', 'Maths'])

# Assign the series name
s2.name = "Student Marks"

# Assign the index name
s2.index.name = "Subject"

print(s2)

# return the first element in the s2 series
print(s2[0])

# slicing using default integer index
# return the elements starting at position one and ending with the element at index 3
print(s2[1:4])

# Slicing using string index
# return the element associated with the index 'Tamil'
print(s2['Tamil'])