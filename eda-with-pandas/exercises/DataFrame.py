import pandas as pd

# Marks Series
s2 = pd.Series([80, 93, 78, 85, 97], 
               index=['English', 'Science', 'Social', 'Tamil', 'Maths'])
s2.name = "Student Marks"
s2.index.name = "Subject"

# Convert Series to DataFrame
df_marks = s2.to_frame()

print(df_marks)
