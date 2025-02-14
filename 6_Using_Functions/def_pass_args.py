def update_vector(u):
    u[2] = 42
    print(u)  # =>  [108, 42, 42, 7]

a = [108, 42, 13, 7]
update_vector(a)
print(a)      # => [108, 42, 42, 7]

