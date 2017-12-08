def BinarySearchByRecursion(A, low, high, key):
    if (low > high):
        return (low - 1)
    mid = low + ((high-low) / 2)
    mid = int(mid)
    if (A[mid] == key):
        return mid
    elif (A[mid] > key):
        return BinarySearchByRecursion(A, low, (mid-1), key)
    else:
        return BinarySearchByRecursion(A, (mid+1), high,key)


def BinarySearchByIteration(A, low, high, key):
    while(low <= high):
        mid = low + ((high-low) / 2)
        mid = int(mid)
        if (A[mid] == key):
            return mid
        elif (A[mid] > key):
            high = mid - 1
        else:
            low = mid + 1
    return low - 1

A = [1,2,3,4,5,6,7,8,9]
key = 10
result = BinarySearchByRecursion(A, 0, 8, key)
print("BinarySearchByRecursion :- ", result)

re = BinarySearchByIteration(A, 0, 8, 8)
print("BinarySearchByIteration :- ", re)
