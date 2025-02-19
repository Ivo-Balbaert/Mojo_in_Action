from time import time


def binary_search(arr, x):
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


# top-level code:
n = 1_000_000
arr = []
for i in range(n):                  
    arr.append(i)
results = []
start = time()
for i in range(n):
    results.append(binary_search(arr, n - i))
end = time()
print((end - start) * 1000, "ms")
print("Results: ", len(results))

# =>
# 1254.974603652954 ms
# Results:  1000000
