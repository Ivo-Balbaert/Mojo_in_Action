struct Person:
    var name: String

    @implicit
    fn __init__(out self, name: StringLiteral):
        self.name = name

    fn get_name(self) -> String:
        return self.name


fn main():
    var v: Person = "Tom Watson"
    print(v.get_name())  # => Tom Watson
