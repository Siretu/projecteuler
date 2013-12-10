def fact(x):
    if x <= 1:
        return 1
    else:
        return x * fact(x-1)

def curios(i):
    return sum([fact(int(x)) for x in list(str(i))])

i = 3
s = 0
while 1:
    if i == curios(i):
        s += i
        print "Sum (so far): %d" % s
    i += 1
