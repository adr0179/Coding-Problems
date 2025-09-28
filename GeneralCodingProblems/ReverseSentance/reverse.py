def reverse_sentance(str):
    # splits every word into a list
    sentance = str.split(" ")

    reverse = []

    for i in range(len(sentance) - 1, -1, -1):
        reverse.append(sentance[i])
    
    return " ".join(reverse)

print(reverse_sentance("Hello world I am a Clanker"))