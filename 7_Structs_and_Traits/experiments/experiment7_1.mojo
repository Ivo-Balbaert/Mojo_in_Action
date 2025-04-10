# @value
struct Planet:
    var mass: Int
    var name: String

    fn __init__(out self, mass: Int, name: String):
        self.mass = mass
        self.name = name

    fn __init__(out self):
        self.mass = 100
        self.name = "Earth"

    fn describe_planet(self):
        print("Name:", self.name, "Mass:", self.mass)

    fn is_gas_giant(p: Self) -> Bool:
        return p.mass > 1200


fn main():
    var rocky1 = Planet(300, "Rocky")
    # print(rocky1)   # invalid call to 'print': could not deduce parameter 'Ts' of callee 'print'
    print(rocky1.name)  # => Rocky
    print(rocky1.mass)  # => 300

    var pl1 = Planet(75, "Mars")
    var earth = Planet()
    print(earth.name)  # => Earth

    rocky1.describe_planet()  # => Name: Rocky Mass: 300
    print(rocky1.is_gas_giant())  # => False
