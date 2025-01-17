fn main() raises:
    var file: FileHandle
    try:
        with open("my_file1.txt", "r") as file:
            print(file.read())
    except err:
        print("An error occurred", err)
    finally:
        print("in finally")


# When no error:
# => This is the contents of my_file.
# => in finally

# When error:
# => An error occurred file path 'my_file1.txt' not found for read
# in finally
