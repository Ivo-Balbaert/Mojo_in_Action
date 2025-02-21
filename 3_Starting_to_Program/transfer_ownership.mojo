fn main():
    var lang: String = "Mojo"
    lang += "+"
    print("lang is", lang)  # => Mojo+

    var new_lang = lang^
    print("new_lang is ", new_lang)  # => Mojo+
    lang += "+"  # => error: use of uninitialized value 'lang'
    new_lang += "+"
    print("new_lang is", new_lang)  # => Mojo++
