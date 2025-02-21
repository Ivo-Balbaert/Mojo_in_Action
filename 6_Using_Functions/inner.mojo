fn outer():
    var numo: Int = 42

    fn inner():
        var numi = 108
        print(numo)  # => 42
        numo = 109
        print(numo)  # => 109
        print("I am in the nested function")

    inner()
    # print(numi) # error: use of unknown declaration 'numi'
    print(numo)  # => 42


fn main():
    outer()  # => I am nested
    # inner() # error: use of unknown declaration 'inner'mojo
