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

print(make_space_line(3, 5))
