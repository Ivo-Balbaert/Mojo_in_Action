from memory import stack_allocation


fn main():
    # Allocate 50 integers on the stack
    var scratchpad = stack_allocation[50, DType.int64]()

    # Set values
    scratchpad.store(0, 42)  # Store 42 at index 0

    # Get values
    var value = scratchpad.load(0)  # Load value from index 0
    print(value)  # => 42
