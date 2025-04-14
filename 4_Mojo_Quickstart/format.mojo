fn main() raises:
    var s = String("Items in list: ", 5)
    print(s)  # => Items in list: 5

    # String.write:
    var name = "Mojo"
    var version = 25.3
    var is_awesome = True

    var message = String.write(
        name, " version ", version, " is awesome: ", is_awesome
    )
    print(message)  # => Mojo version 25.3 is awesome: True

    # String literal formatting:
    # Automatic indexing
    var str1 = "{} {} {}".format(True, "hello", 108)
    print(str1)  # => True hello 108
    # Manual indexing
    var str2 = "{0} {1} {0}".format("Mojo", 25.3)
    print(str2)  # => Mojo 25.3 Mojo

    var str3 = String("{} {} {}").format(True, "hello", 108)
    # Basic String Formatting
    # Automatic indexing:
    print(str3)  # => True hello 108

    var str4 = String("{0} {1} {0}").format("Mojo", 25.3)
    # Manual indexing:
    print(str4)  # => Mojo 25.3 Mojo

    var str5 = String("{} {!r}").format("Hello", "World!")
    # Conversion flags !s and !r, allowing for str() and repr() conversions within format strings:
    print(str5)  # => Hello 'World!'
    var str6 = String("{!s} {!r}").format("Hello", "World!")
    print(str6)  # => Hello 'World!'
