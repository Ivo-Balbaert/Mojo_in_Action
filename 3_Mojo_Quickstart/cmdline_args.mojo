from sys import argv


fn main():
    print("There are ")
    print(len(argv()))  # => 3
    print("command-line arguments, namely:")
    # print(argv()[0])  # => cmdline_args.mojo
    # print(argv()[1])  # => 42
    # print(argv()[2])  # => abc

    for i in range(len(argv())):
        print(argv()[i])


# $ mojo cmdline_args.mojo 42 "abc"
# There are
# 3
# command-line arguments, namely:
# cmdline_args.mojo
# 42
# abc
