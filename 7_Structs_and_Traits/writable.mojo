@value
struct Person(Stringable, Writable):
    var name: String
    var age: Int

    fn __str__(self) -> String:
        return self.name

    # Allows the type to be written into any `Writer`
    fn write_to[W: Writer](self, mut writer: W) -> None:
        writer.write("Person(", self.name, ", ", self.age, ")")


fn main():
    var person = Person("Dario Doe", 62)
    print(person)  # => Person(Dario Doe, 62)
