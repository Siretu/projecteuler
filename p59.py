from time import sleep

f = open("cipher1.txt")
text = f.read().replace("\n","")
ascii_list = text.split(",")
#print ascii_list
f.close()

key = "aaa"
while key != "zzz":
    decipher = []
    for i in range(len(ascii_list)):
        keychar = key[i%len(key)]
        decipher.append(int(ascii_list[i]) ^ ord(keychar))
    # Generate next key
    if key[2] != "z":
        key = key[:2] + chr(ord(key[2])+1)
    else:
        if key[1] != "z":
            key = key[0] + chr(ord(key[1])+1) + "a"
        else:
            key = chr(ord(key[0])+1) + "aa"
    #print key
    if not sum([1 for x in decipher if x<32 or x>126]):
        text = "".join([chr(x) for x in decipher])
        print text
    sleep(0.1)
#print decipher
print sum(decipher)
