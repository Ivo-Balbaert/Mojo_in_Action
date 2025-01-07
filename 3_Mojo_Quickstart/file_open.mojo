fn main() raises:
    var file: FileHandle
    try:
        file = open("my_file1.txt", "r")
        print(file.read())
    except err:
        print("An error occurred", err)
    finally:
        pass
        # file.close()  # =>error: use of uninitialized value 'file'


# => This is the contents of my_file.
