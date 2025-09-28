def group_anagrams(arr):
    anagrams = {}

    # use dictionary to make a key for every word (sorted word)
    for word in arr:
        key = "".join(sorted(word)) # combine letters in word into a string
        if key not in anagrams:
            anagrams[key] = []
        anagrams[key].append(word)


    print(anagrams)

words = ["eat","tea","tan","ate","nat","bat","tab","listen","silent"]

group_anagrams(words)
        