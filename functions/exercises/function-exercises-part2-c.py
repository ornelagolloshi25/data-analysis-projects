def make_line(size):
   line = ""
   for i in range(size):
      line += "#"
   return line

# Part 2 B -- Make Space-Line 
def make_space_line(numSpaces, numChars):
    space_line = make_line(numChars)
    for i in range(numSpaces):
      space_line = " " + space_line
      space_line += " "
    return space_line;

# Part 2 C -- Make Isosceles Triangle
def make_isosceles_triangle(height):
   triangle = ""
   for i in range(height):
      triangle += make_space_line(height - i - 1, 2 * i + 1)
      if i < height - 1:
         triangle += "\n"
   return triangle

print(make_isosceles_triangle(5))