fn print_tags(*tags: String):
    for tag in tags:
        print(tag[], end=" / ")
    print()


fn main():
    print_tags("news", "trending")
    # => news / trending /

    print_tags("product", "promotion", "info", "video")
    # => product / promotion / info / video /

    print_tags("ad")
    # => ad /
    print_tags()  # =>
