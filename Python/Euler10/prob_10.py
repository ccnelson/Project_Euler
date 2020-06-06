# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

def check_prime(number):
    for i in range(2, number):
        if number % i == 0:
            return False
    else:
        return True

x = 2000000
y = 0

for i in range(1, x):
    if check_prime(i):
        y = y + i
    if i % 10000 == 0:
        print(i)

print(y)

######### this is too slow to even test #########
