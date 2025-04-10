trait Planetable:
    alias PlanetType: AnyType
    alias moon_count: Int

    fn signal(self) -> PlanetType:
        ...


struct PlanetInt(Planetable):
    alias PlanetType = String
    alias moon_count = 2

    fn __init__(out self):
        ...

    fn signal(self) -> self.PlanetType:
        return "PlanetInt"


struct PlanetFloat(Planetable):
    alias PlanetType = Float16
    alias moon_count = 3

    fn __init__(out self):
        ...

    fn signal(self) -> self.PlanetType:
        return 3.1415


fn call_signal[T: Planetable](m: T):
    _ = m.signal()  # Ignore the return type


fn main():
    var pli = PlanetInt()
    for _ in range(PlanetInt.moon_count):  # Access count statically
        print(pli.signal())  # => "PlanetInt"  (2 times)

    var plf = PlanetFloat()
    for _ in range(plf.moon_count):  # Possible also dynamically
        print(plf.signal())  # => 3.140625 (3 times)

    call_signal(pli)
    call_signal(plf)
