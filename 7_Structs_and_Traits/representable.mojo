@value
struct Person(Representable):
    var name: String
    var age: Int

    fn __repr__(self) -> String:
        return (
            "Person(name=" + repr(self.name) + ", age=" + repr(self.age) + ")"
        )


fn main():
    var person = Person("Dario", 62)
    print(repr(person))  # => Person(name='Dario', age=62)
    # which is the same as:
    print(person.__repr__())  # => Person(name='Dario', age=62)
