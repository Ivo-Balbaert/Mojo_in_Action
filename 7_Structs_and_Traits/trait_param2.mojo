trait SomeTrait:
    fn required_method(self, n: Int):
        ...


@value
struct SomeStruct(SomeTrait):
    fn required_method(self, n: Int):
        print("Hello trait", n)  # => Hello trait 42


fn fun_with_traits[T: SomeTrait](x: T):
    x.required_method(42)


fn main():
    var thing = SomeStruct()
    fun_with_traits(thing)
