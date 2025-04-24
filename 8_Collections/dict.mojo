from collections import Dict


fn main() raises:
    var hashes = Dict[String, Int]()

    var country_capital = Dict[String, String]()
    country_capital["United Kingdom"] = "London"
    country_capital["India"] = "New Delhi"
    country_capital["China"] = "Beijing"

    print(country_capital["India"])  # => New Delhi
    country_capital["India"] = "Mumbai"
    print(country_capital["India"])  # => Mumbai
    country_capital["India"] = "New Delhi"

    # Key error and check if key exists:
    # print(country_capital["Belgium"])
    # => Unhandled exception caught during execution: KeyError
    if "Belgium" in country_capital:
        print("Belgium has as capital ", country_capital["Belgium"])
    else:
        print("We don't know the capital of Belgium")

    dict_as_string = country_capital.__str__()
    print(
        dict_as_string
    )  # => {'United Kingdom': 'London', 'India': 'New Delhi', 'China': 'Beijing'}

    for item in country_capital.items():
        print(item[].key + ", " + item[].value, end=" - ")
        print(item[].hash)
    # =>
    # United Kingdom, London - 16399761064420479588
    # India, New Delhi - 14418127593282858532
    # China, Beijing - 5887465646640935972
    print()

    print("capital, country:")
    for country in country_capital:
        print(country_capital[country[]] + ", " + country[], end=" - ")
    # => capital,  country:
    # London, United Kingdom - New Delhi, India - Beijing, China -
    print()

    var d1 = Dict[String, Float64]()
    d1["pi"] = 3.1415
    d1["e"] = 2.71
    print(len(d1))  # => 2
    print(d1["pi"])  # => 3.1415
    print(d1.pop("e"))  # => 2.71
    print(len(d1))  # => 1

    if "pi" in d1:
        print("We have pi in our Dict!")
    # => We have pi in our Dict!

    if not ("e" in d1):
        print("We have no e in our Dict!")
    # => We have no e in our Dict!

    var opt1 = d1.find("pi")
    # print(opt1)
    # => invalid call to 'print': could not deduce parameter 'Ts' of callee 'print'mo
    var empty_opt = d1.find("e")
