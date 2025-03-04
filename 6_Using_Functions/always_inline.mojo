@always_inline
fn print_and_increment(mut x: Int):
    print(x)
    x += 1


fn main():
    var i = 0

    @parameter
    for j in range(0, 3):
        print_and_increment(i)


# =>
# 0
# 1
# 2
