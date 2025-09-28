def palindrome_check(str):
    # splits every char in every word into a list
    char_list = list(str)

    reversed = []

    for char in char_list:
        reversed.insert(0, char)

    if "".join(reversed) == str:
        return True
    
    return False

print(palindrome_check("racecar"))
print(palindrome_check("mother"))
print(palindrome_check("peep"))