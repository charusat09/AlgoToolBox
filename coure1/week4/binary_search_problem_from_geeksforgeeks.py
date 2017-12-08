'''
Gautam and Subhash are two brothers. They are similar to each other in all respects except one. They have different ways of searching. When Gautam has to search for an item from a lot, he goes through all the items one by one and stops when he finds the item. However Subhash has an entirely different and interesting way of searching. However the search works only for items which are sorted. He goes to the middle of the lot, if he finds the desired item, he stops, if not, he checks whether the middle item is smaller or larger than the required item. If larger, he repeats the same process for the first half of the lot, otherwise second half. One day, the two brothers sit in a contest in which they have to find a name out of a sorted dictionary. Whoever finds out the name first will win the contest. The audience is very eager to know who will win and hence they want you to predict.

inputs:
1
10 8 10 25

output:
2

explaination:
gautam_unit * gautam_count = 10 * 9 = 90
subhash_count * subhash_unit = 25 * 3 = 75

Subhash takes less time than Gautam
'''

total_matches = input("")
total_matches = int(total_matches)
result = [0, 0]

def BinarySearchByIteration(A, low, high, key):
    counter = 0
    while(low <= high):
        mid = low + ((high-low) / 2)
        mid = int(mid)
        counter += 1
        if (A[mid] == key):
            return counter
        elif (A[mid] > key):
            high = mid - 1
        else:
            low = mid + 1


def LinerSearch(A, low, high, key, gautam_counter = 0):
    gautam_counter += 1
    if (low > high):
        return
    if (A[low] == key):
        return gautam_counter
    return LinerSearch(A, low+1, high, key, gautam_counter)


while(total_matches > 0):
    data = input("")
    input_data = data.split(" ")
    high = int(input_data[0])
    A = list(range(0, high))
    key = int(input_data[1])

    subhash_count = BinarySearchByIteration(A, 0, high-1, key)
    gautam_count = LinerSearch(A, 0, high-1, key)

    gautam_unit = int(input_data[2])
    subhash_unit = int(input_data[3])

    if ((gautam_unit * gautam_count) < (subhash_count * subhash_unit)):
        print("1")
    else:
        print("2")


    total_matches -= 1
