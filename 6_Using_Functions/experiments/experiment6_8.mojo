@always_inline
fn deco_parameter[max: Int]():
    @parameter
    for i in range(max):

        @parameter
        if i == 10:
            print("found 10!")


# fn main():
#     deco_parameter[12]()  # => found 10!


# reduced version:
fn main():
    i = 0
    i = 1
    i = 2
    i = 3
    i = 4
    i = 5
    i = 6
    i = 7
    i = 8
    i = 9
    i = 10
    print("found 10!")
    i = 11
