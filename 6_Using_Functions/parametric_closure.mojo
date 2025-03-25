fn outer[f: fn () capturing -> Int]():
    print(f())


fn call_it():
    var num = 5  # 1

    @__copy_capture(num)
    @parameter
    fn inner() -> Int:  # 2
        return num

    outer[inner]()


fn main():
    call_it()  # => 5
