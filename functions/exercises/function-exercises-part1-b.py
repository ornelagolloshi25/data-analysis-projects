def make_line(size):
   line = ""
   for i in range(size):
      line += "#"
   return line

def make_square(size):
   square = ""
   for i in range(size):
      square += make_line(size)
      if i < size - 1:
         square += "\n"
   return square

print(make_square(5))