fn main() raises:
    # Concatenation: + or __add__
    var s1 = "hello "
    var s2 = "world"
    var s3 = s1 + s2  # equivalent to x1.__add__(y1)
    print(s3)  # => hello world

    # Split:
    var data = String("Doe,Denise,2002-12-16,V,United Kingdom").split(",")
    # => (data, ["Doe", "Denise", "2002-12-16", "V", "United Kingdom"])

    # Join:
    var j = String("🔥")
    print(j.join("a", "b"))  # => a🔥b
    print(j.join(40, 2))  # => 40🔥2
