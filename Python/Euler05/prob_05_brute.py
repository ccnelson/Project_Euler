
def div_20(n):
    for i in range(2, 21):
        if n % i > 0:
            return False
    return True

n = 20
unsolved = True

while unsolved:
    if div_20(n):
        print(n)
        unsolved = False
    else:
        n += 20
    #if n % 1000000 == 0:
    #    print(n, " ", end="")

    
