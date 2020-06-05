#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
#we can see that the 6th prime is 13.
#What is the 10 001st prime number?

def check_prime(number):
    for i in range(2, int(number)):
        if number % i == 0:
            return False
    else:
        return True

j = 2 # the lowest prime is two but the above function thinks 1 counts
i = 1
while i < 10002:
    if check_prime(j):
        i = i + 1
        print(j)
    j = j + 1
print("10001st prime: ", j-1) # minus one cos j gets 1 added
input()
