def merge_intervals(arr):
    start = arr[0]
    interval_list = []

    for i in range(1, len(arr)):
        if arr[i][0] <= start[1]:
            start[1] = max(start[1], arr[i][1])
        else:
            interval_list.append(start)
            start = arr[i]

    interval_list.append(start)
    return interval_list
            
    
two_d = [
    [1,3],
    [2,6],
    [8,10]
]

print(merge_intervals(two_d))