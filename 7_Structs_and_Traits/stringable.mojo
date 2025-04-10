@value
struct Person(Stringable):
    var name: String
    var age: Int

    fn __str__(self) -> String:
        return self.name


fn main():
    var person = Person("Dario Doe", 62)
    print(String(person) == "Dario Doe")  # => True
    # print(tst)  # =>
    # error: invalid call to 'print': could not deduce parameter 'Ts' of callee 'print'
    # note: failed to infer parameter 'Ts', argument type 'Person' does not conform to trait 'Writable'
