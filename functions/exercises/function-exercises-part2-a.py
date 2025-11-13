
def make_line(size):
   line = ""
   for i in range(size):
      line += "#"
   return line

# Part 2 A -- Make a Stairs
def make_downward_stairs(height):
   stairs = ""
   for i in range(height):
      stairs += make_line(i+1)
      if i < height - 1:
         stairs += "\n"
   return stairs

print(make_downward_stairs(5))
