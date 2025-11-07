food = "water bottles,meal packs,snacks,chocolate"
equipment = "space suits,jet packs,tool belts,thermal detonators"
pets = "parrots,cats,moose,alien eggs"
sleep_aids = "blankets,pillows,eyepatches,alarm clocks"

# a) Use split to convert the strings into four cabinet lists. Alphabetize the contents of each cabinet.
food = "water bottles,meal packs,snacks,chocolate".split(',')
equipment = "space suits,jet packs,tool belts,thermal detonators".split(',')
pets = "parrots,cats,moose,alien eggs".split(',')
sleep_aids = "blankets,pillows,eyepatches,alarm clocks".split(',')

food.sort()
equipment.sort()
pets.sort()
sleep_aids.sort()

# b) Initialize a cargoHold list and add the cabinet lists to it. Print cargoHold to verify its structure.
cargoHold = [food, equipment, pets, sleep_aids]
print("Cargo Hold Contents:")
print(cargoHold)


# c) Query the user to select a cabinet (0 - 3) in the cargoHold.
cabinet_index = input("\nSelect a cabinet (0 - 3): ")


# d) Use bracket notation and format to display the contents of the selected cabinet. If the user entered an invalid number, print an error message.
cabinet_index = int(cabinet_index)
if 0 <= cabinet_index < len(cargoHold):
    print(f"Cabinet {cabinet_index} contains: {cargoHold[cabinet_index]}")
else:
    print("Error: Invalid cabinet number.")


# e) Modify the code to query the user for BOTH a cabinet in cargoHold AND a particular item. Use the in method to check if the cabinet contains the selected item, then print “Cabinet ____ DOES/DOES NOT contain ____.”
cabinet_index = input("\nSelect a cabinet (0 - 3): ")
item = input("Enter an item to search for: ")

cabinet_index = int(cabinet_index)
if 0 <= cabinet_index < len(cargoHold):
    cabinet = cargoHold[cabinet_index]
    if item in cabinet:
        print(f"Cabinet {cabinet_index} DOES contain '{item}'.")
    else:
        print(f"Cabinet {cabinet_index} DOES NOT contain '{item}'.")
else:
    print("Error: Invalid cabinet number.")