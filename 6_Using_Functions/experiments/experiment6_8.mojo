@always_inline
fn deco_parameter[max: Int]():
    @parameter
    for i in range(max):
        print("i =", i)

        @parameter
        if i == 10:
            print("found 10!")


fn main():
    deco_parameter[12]()  # => found 10!


# reduced version:
# fn main():
# print("i = 0")
# print("i = 1")
# print("i = 2")
# print("i = 3")
# print("i = 4")
# print("i = 5")
# print("i = 6")
# print("i = 7")
# print("i = 8")
# print("i = 9")
# print("i = 10")
# print("found 10!")
# print("i = 11")
