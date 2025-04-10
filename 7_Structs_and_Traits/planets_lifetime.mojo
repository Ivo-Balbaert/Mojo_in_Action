from memory import UnsafePointer


def print_address(ptr: UnsafePointer):
    print(Int(ptr))


# @value
struct Planet:
    var mass: Int
    var name: String

    fn __init__(out self, mass: Int, name: String):
        self.mass = mass
        self.name = name

    fn __del__(owned self):
        self.mass = 0
        self.name = ""

    fn __copyinit__(out self, existing: Self):
        self.mass = existing.mass
        self.name = existing.name

    fn __moveinit__(out self, owned existing: Self):
        self.mass = existing.mass
        self.name = existing.name

    fn describe_planet(self):
        print("Name:", self.name, "Mass:", self.mass)


fn main() raises:
    var rocky = Planet(300, "Rocky")
    # making a copy (uses __copyinit__)
    var pl1 = rocky
    pl1.describe_planet()  # => Name: Rocky Mass: 300
    rocky.describe_planet()  # => Name: Rocky Mass: 300
    # p1 = UnsafePointer.address_of(rocky)
    # print_address(p1)  # => 140730608098992
    # p2 = UnsafePointer.address_of(pl1)
    # print_address(p2)  # => 140730608099024

    # moving the instance (uses __moveinit__)
    # change_name(rocky^, "TRAPPIST-1e")
    # => Name: TRAPPIST-1e Mass: 300
    p3 = UnsafePointer.address_of(rocky)
    print_address(p3)  # => 140731404273848
    var pl2 = rocky^
    # rocky.describe_planet()
    # => use of uninitialized value 'rocky'
    pl2.describe_planet()
    # => Name: Rocky Mass: 300
    p4 = UnsafePointer.address_of(pl2)
    print_address(p4)  # => 140731404273880
