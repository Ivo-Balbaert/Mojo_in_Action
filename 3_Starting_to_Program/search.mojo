from collections import List


fn binary_search(arr: List[Int32], x: Int32) -> Int32:
    low = 0
    high = len(arr) - 1
    mid = 0

    while low <= high:
        mid = (high + low) // 2

        if arr[mid] < x:
            low = mid + 1
        elif arr[mid] > x:
            high = mid - 1
        else:
            return mid

    return -1


fn main():
    n = 1_000_000
    arr = List[Int32]()
    for i in range(n):
        arr.append(i)
    results = List[Int32]()

    for i in range(n):
        results.append(binary_search(arr, n - i))
    print("Results: ", len(results))


# => Results:  1000000
