fn show(text: String):
    print(text)


fn main():
    text = "fn or def, I do care"
    show(text)  # => "fn or def, I do care"
    # text = 108  # => cannot implicitly convert 'IntLiteral' value to 'StringLiteral'


# Remark: the type StringLiteral is more appropriate here,
# but String can be used
