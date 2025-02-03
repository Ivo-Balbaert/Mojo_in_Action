from random import seed, random_float64, random_si64, random_ui64


fn main():
    # seed()
    print(random_si64(-10, 10))  # => -3
    print(random_ui64(0, 10))  # => 8
    print(random_float64(0.0, 1.0))  # => 0.5879311035116334
