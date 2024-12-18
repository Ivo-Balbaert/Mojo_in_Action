fn main():
    words = List[String]("Mojo", "is", "fire")
    for word in words:
        word[] += "🔥"
    print_list(words)


fn print_list(words: List[String]):
    for word in words:
        print(word[])
