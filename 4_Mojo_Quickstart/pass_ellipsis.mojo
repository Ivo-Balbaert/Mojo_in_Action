from os import abort


fn test():
    pass


fn test1():
    ...


fn crash():
    abort()


fn main():
    test()
    test1()
    print("Nothing happened!")  # => Nothing happened!


#     crash()
