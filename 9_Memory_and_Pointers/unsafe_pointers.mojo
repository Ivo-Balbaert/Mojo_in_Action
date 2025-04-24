from memory import UnsafePointer  # A


def print_address(ptr: UnsafePointer):
    print(Int(ptr))


fn main() raises:
    var ptr: UnsafePointer[Int]  # B
    ptr = UnsafePointer[Int]()  # C
    print_address(ptr)  # => 0
    # var value = ptr[]
    # print(value)  # => Mojo crashes
    var ptr2 = UnsafePointer[Int].alloc(7)  # D
    var value = ptr2[]
    print(value)  # => 0
    print_address(ptr2)  # => 90148140228608

    # Point to an existing value:
    var value2 = 108
    ptr = UnsafePointer[Int].address_of(value2)
    print_address(ptr)  # => 140727043935248
    print(ptr[])  # => 108
    print(ptr[0])  # => 108

    # Initializing pointer's memory by copying an existing value:
    ptr2.init_pointee_copy(value2)
    print_address(ptr2)  # => 90148140228608
    print(ptr2[])  # =>  108

    # Initializing pointer's memory by moving an existing value:
    ptr2.init_pointee_move(value2^)
    print_address(ptr2)  # => 90148140228608
    print(ptr2[])  # =>  108

    ptr2[] = 256
    print(ptr2[])  # =>  256

    # An UnsafePointer to a String
    ptr_str = UnsafePointer[String].alloc(1)
    # ptr_str[] = "Bad way to initialize!"  # Undefined behavior! => program crashes!
    print(ptr_str[])  # =>
    ptr_str.init_pointee_move("Good way to initialize")
    ptr_str[] += " and to change"  # It works now
    print(ptr_str[])  # => Good way to initialize and to change
    print_address(ptr_str)  # => 21021715349504

    # Freeing memory
    # 1 - Destroying the pointee's value
    ptr.destroy_pointee()
    ptr2.destroy_pointee()
    ptr_str.destroy_pointee()

    # var i1 = ptr.take_pointee()
    ptr2.take_pointee()  # => 'Int' value is unused
    ptr_str.take_pointee()  # => warning: 'String' value is unused

    var dst = UnsafePointer[Int].alloc(1)
    ptr.move_pointee_into(dst)

    # 2 - Destroying the pointer
    # ptr.free()
    ptr2.free()
    ptr_str.free()
    print_address(ptr_str)  # => 21021715349504
    print(ptr_str[])  # =>  # => �@��� to initialize���
