fn main():
    var i: IntLiteral = 42
    alias n = 9_223_372_036_854_775_999  # 1
    # print(n)  # => error: can't materialize IntLiteral in dynamic context
    print(n // 2)  # => 4611686018427387999

    alias m = n * n * n
    var p: Int = m
    # print(m)
    # note: integer value 784637716923335144224922739325394202574712774656036327999 requires 191 bits to store, but the destination bit width is only 64 bits wide

    var flit: FloatLiteral = 3.3
    print(flit)  # => 3.2999999999999998

    var lit = "This is my StringLiteral"  # 1
    print(lit)  # => This is my StringLiteral
    var lit2 = "This is also a StringLiteral"  # 2
    var lit3 = "This is my 'StringLiteral'"  # 1

    var multi_s = """
    Multi-line string literals let you 
        enter long blocks of text, including 
    newlines, spaces and tabs."""
    print(multi_s)
    # =>
    # Multi-line string literals let you
    #     enter long blocks of text, including
    # newlines, spaces and tabs.
