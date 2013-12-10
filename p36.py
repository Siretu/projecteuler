def isPalindrome(i):
    s = str(i)
    bins = bin(i)[2:]
    return s == s[::-1] and bins == bins[::-1]
        
r = int(raw_input("Range: "))
print sum([x for x in range(r) if isPalindrome(x)])
