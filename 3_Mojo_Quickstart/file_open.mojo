fn main() raises:
    var file: FileHandle
    try:
        file = open("my_file.txt", "r")
        print(file.read())
    finally:
        # file.close()

# => This is the contents of my_file.
