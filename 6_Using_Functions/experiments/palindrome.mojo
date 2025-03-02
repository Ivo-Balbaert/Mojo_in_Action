fn is_palindrome(str: String) -> Bool:
    var half_len: Int = len(str) // 2
    for i in range(0, half_len):
        if str[i] != str[len(str) - i - 1]:
            return False
    return True


fn main():
    print(is_palindrome("ava"))  # => True
    print(is_palindrome("otto"))  # => True
    print(is_palindrome("nothing"))  # => False
