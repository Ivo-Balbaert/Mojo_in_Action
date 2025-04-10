@value
struct Person(Sized):
    var name: String
    var length: Int

    fn __len__(self) -> Int:
        return self.length


fn main():
    var tst = Person("Dario", 171)
    print(len(tst) == 171)  # => True
