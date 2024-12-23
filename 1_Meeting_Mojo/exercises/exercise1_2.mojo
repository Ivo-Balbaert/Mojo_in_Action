fn main():
    print(3.1415)
    print("Mojo is your future!")  # print('Mojo is your future!')
    print("A", 3.1415, "B", "42")
    print("A", 3.1415, "B", "42", sep=" - ")
    print("A", 3.1415, "B", "42", end="")
    print(" <-- on same line!")


# =>
# 3.1415000000000002
# Mojo is your future!
# A 3.1415000000000002 B 42
# A - 3.1415000000000002 - B - 42
# A 3.1415000000000002 B 42 <-- on same line!
