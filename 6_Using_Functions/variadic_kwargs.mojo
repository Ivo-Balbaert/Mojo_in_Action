fn var_kwargs(x: Int, y: Int, **kwargs: Int) raises:
    print(x, y)
    for key in kwargs.keys():
        print(key[], "=", kwargs[key[]])


fn main() raises:
    var_kwargs(0, 1, a=2, b=3, c=4, d=5, e=6)  # =>


# 0 1
# a = 2
# b = 3
# c = 4
# d = 5
# e = 6
