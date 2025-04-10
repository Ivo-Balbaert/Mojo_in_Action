@value
struct Planet(Intable):
    var mass: Int
    var name: String

    fn __int__(self) -> Int:
        return self.mass


fn main():
    var rocky = Planet(300, "Rocky1")
    print(Int(rocky))  # => 300
