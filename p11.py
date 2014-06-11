def left_diagonal(i,j):
    return matrix[i][j] * matrix[i+1][j-1] * matrix[i+2][j-2] * matrix[i+3][j-3]

def right_diagonal(i,j):
    return matrix[i][j] * matrix[i+1][j+1] * matrix[i+2][j+2] * matrix[i+3][j+3]

def straight_line(i,j):
    return matrix[i][j] * matrix[i+1][j] * matrix[i+2][j] * matrix[i+3][j]



f = open("numbergrid.txt")
text = f.read()
matrix = [[int(a) for a in x.split(" ")] for x in text.split("\n") if x]
print matrix


print len(matrix)

maxVal = 0

for i in range(len(matrix)-3):
    for j in range(len(matrix[i])):
        if j > 2:
            maxVal = max(left_diagonal(i,j),maxVal)
        if j < 17:
            maxVal = max(right_diagonal(i,j),maxVal)
        maxVal = max(straight_line(i,j),maxVal)
        # We don't check for horizontal lines, because I forgot it and found the answer anyway.

print maxVal









