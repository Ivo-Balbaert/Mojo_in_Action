from memory import Span


fn main():
    # Create a base list
    base_data = List[Byte](1, 2, 3, 4, 5, 6)
    span1 = Span(base_data)
    # # Create a span slice from the base list
    span2 = Span(base_data)[3:5]
    print(len(span2))  # => 2
    for i in span2:
        print(i[], end=" - ")  # => 4 - 5 -
    print()
    print(span2[1])  # => 5

    # Copy the base list and extend it with a span
    lst = base_data.copy()
    lst.extend(span2)
    for i in lst:
        print(i[], end=" - ")  # => 1 - 2 - 3 - 4 - 5 - 4 - 5 -
    print()

    var str = String()
    str.write_bytes(span2)
    span4 = str.as_bytes()
    for cp in str.codepoints():
        print(Int(cp), end=" - ")  # => 4 - 5 -
    print()
