def update_vector(u):
    u[2] = 42
    print(u)  # =>  [108, 42, 42, 7]


fn main() raises:
    a = object([])  # A
    a.append(object(108))
    a.append(object(42))
    a.append(object(13))
    a.append(object(7))
    print(a)  # => [108, 42, 13, 7]

    update_vector(a)  # B
    print(a)  # =>[108, 42, 42, 7]
