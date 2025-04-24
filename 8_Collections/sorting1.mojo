fn main():
    var v = List[Int](108)

    v.append(20)
    v.append(10)
    v.append(70)

    sort(v)

    for li in v:
        print(li[], end=" ")  # => 10 20 70 108
