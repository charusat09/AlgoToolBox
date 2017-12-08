def LinerSearch(A, low, high, key):
  if (low > high):
    return
  if (A[low] == key):
    return low
  return LinerSearch(A, low+1, high, key)

A = [7,3,9,1,5]
key = 9

result = 0
print(LinerSearch(A, 0, 5, key))
