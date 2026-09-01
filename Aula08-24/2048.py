from numpy import random

matrix = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]

def random_position():
    x = random.randint(0,4)
    y = random.randint(0,4)

    return [x,y]

def print_matrix():
    for i in range(4):
        print(matrix[i])

def spawn():
    position = random_position()

    if(matrix[position[0]][position[1]] == 0):
        matrix[position[0]][position[1]] = int(random.choice([2,4]))
    else:
        spawn()

spawn()
spawn()
print_matrix()