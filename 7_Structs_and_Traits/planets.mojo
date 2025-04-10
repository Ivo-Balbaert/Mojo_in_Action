@value
struct Planet:
    var mass: Int
    var name: String

    fn __init__(out self):
        self.mass = 100
        self.name = "Earth"

    fn __init__(out self, name: String):
        self = Planet()
        self.name = name

    fn __init__(out self, mass: Int, name: String):
        self.mass = mass
        self.name = name

    fn describe_planet(self):
        print("Name:", self.name, "Mass:", self.mass)

    fn __lt__(self, rhs: Planet) -> Bool:
        return self.mass < rhs.mass

    @staticmethod
    fn get_mother_planet() -> Self:
        return Self(100, "Earth")


fn main():
    var rocky1 = Planet(300, "Rocky")
    # print(rocky1)   # invalid call to 'print': could not deduce parameter 'Ts' of callee 'print'
    print(rocky1.name)  # => Rocky
    print(rocky1.mass)  # => 300

    var pl1 = Planet(75, "Mars")
    var earth = Planet()
    print(earth.name)  # => Earth

    rocky1.describe_planet()  # => Name: Rocky Mass: 300

    var trappistg = Planet("TRAPPIST-1g")
    trappistg.describe_planet()  # => Name: TRAPPIST-1g Mass: 100

    # static method:
    plm = Planet.get_mother_planet()
    plm.describe_planet()

    # dunder method __lt__:
    print("mass earth:", earth.mass, "mass rocky1:", rocky1.mass)
    # => mass earth: 100 mass rocky1: 300
    if earth < rocky1:  # 5
        print("earth < rocky1")  # => earth < rocky1

    # if earth < 150
    # => invalid call to '__lt__': right side cannot be converted from 'IntLiteral' to 'Planet'
