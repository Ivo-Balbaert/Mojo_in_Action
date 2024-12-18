fn main():
    var discount_rate: Float64  # 1 - no initialization yet!
    # print(discount_rate)  # 2 - error: use of uninitialized value 'discount_rate'
    var book_type: String = "unknown"  # 3
    # 4 - Late initialization and pattern matching with if/else
    if book_type == "mystery":  # 5
        discount_rate = 0.2  # 20% discount for mystery books
    elif book_type == "sf":
        discount_rate = 0.3
    else:
        discount_rate = 0.05  # 5% discount for other book categories
    print("Discount rate for Book with type", book_type, "is:", discount_rate)


# => Discount rate for Book with ID unknown is: 0.050000000000000003
