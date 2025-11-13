# Part 3 -- Make a Diamond
def make_diamond(height):
   diamond = ""

   for i in range(height):
      spaces = " " * (height - i - 1)
      hash = "#" * (2 * i + 1)
      diamond += spaces + hash + "\n"

   for i in range(height - 2, -1, -1):
      spaces = " " * (height - i - 1)
      hash = "#" * (2 * i + 1)
      diamond += spaces + hash + "\n"

   return diamond

print(make_diamond(5))