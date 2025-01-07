def main():
    # range:
    var n = 10
    for x in range(n):
        print(x, end=" - ")  # => 0 - 1 - 2 - 3 - 4 - 5 - 6 - 7 - 8 - 9 -
    print()

    for x in range(9, 0, -3):
        print(x, end=" - ")  # => 9 - 6 - 3
    else:
        print("we now are <= 0")  # => we now are <= 0

    # String:
    var str = String("Mojo!")
    for i in range(len(str)):
        print(str[i], end=" ")  # => M o j o !
