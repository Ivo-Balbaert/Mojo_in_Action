from testing import assert_true
from sys import is_defined

# alias debug_mode = True
alias debug_mode = True if is_defined["debug_mode"]() else False


fn example():
    @parameter
    if debug_mode:  # B
        print("debug")  # => debug


fn main() raises:
    example()  # => debug

    @parameter
    if debug_mode:  # C
        _ = assert_true(1 == 2, "assertion failed")
    # => AssertionError: assertion failed
