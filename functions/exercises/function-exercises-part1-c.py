def make_line(size):
   line = ""
   for i in range(size):
      line += "#"
   return line

def make_rectangle(width, height):
   rectangle = ""
   for i in range(height):
      rectangle += make_line(width)
      if i < height - 1:
         rectangle += "\n"
   return rectangle

print(make_rectangle(5, 3))