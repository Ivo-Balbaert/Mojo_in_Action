fn outer(f: fn () escaping -> Int):
    print(f())


fn call_it():
    var num = 5  # 1

    fn inner() -> Int:  # 2  # inner captures the context variable a
        return num

    outer(inner)


fn main():
    call_it()  # => 5
