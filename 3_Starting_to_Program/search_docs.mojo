"""
This is a simple example to show the difference in performance 
comparing Python to Mojo. 
It uses a binary search algorithm to look up 
an integer in an integer list.
"""
from collections import List


fn binary_search(arr: List[Int32], x: Int32) -> Int32:
 """This function searches x inside the List arr.
    Args:
        arr: A List of integer numbers.
        x: The integer to search for.

    Returns:
        The index (position) of x in the List arr.
"""

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
    print("We found the number 108 on position", binary_search(arr, 108))

# => Results:  1000000
# => We found the number 108 on position 108 