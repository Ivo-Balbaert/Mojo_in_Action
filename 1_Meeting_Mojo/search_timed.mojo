from time import now
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

    start = now()

    for i in range(n):
        results.append(binary_search(arr, n - i))

    end = now()
    print((end - start) / 1e6, "ms")

    print("Results: ", len(results))


# =>
# 56.476036999999998 ms
# Results:  1000000
