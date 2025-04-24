from collections import Dict


fn main() raises:
    var d1 = Dict[String, Float64]()
    d1["pi"] = 3.1415
    d1["e"] = 2.71

    var opt = d1.find("pi")
    if opt:
        print("pi is", opt.value())
        # => pi is 3.1415
    else:
        print("I don't know pi")

    var null_opt = d1.find("tau")
    if null_opt:
        print("tau is", null_opt.value())
    else:
        print("I don't know tau")
    # => I don't know tau

    print(null_opt.or_else(-1))  # => -1.0
