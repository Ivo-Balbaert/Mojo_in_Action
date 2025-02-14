fn update_string(owned u: String):  # A
    u += "?"
    print(u)  # => I think I will live forever?


fn main() raises:
    a = String("I think I will live forever")
    print(a)  # => I think I will live forever
    update_string(a^)  # A
    print(a)  # => error: use of uninitialized value 'a'
