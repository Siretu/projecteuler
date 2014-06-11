from time import *

start = clock()

def name_score(name):
    score = 0
    for c in name:
        score += (ord(c) - 64)
    return score


f = open("names.txt")
text = f.read()
names = [n[1:-1] for n in text.split(",")]
names.sort()

tot = 0
for i in range(len(names)):
    tot += (i+1) * name_score(names[i])

print tot
print "Time taken = %.2f" % (clock()-start)
