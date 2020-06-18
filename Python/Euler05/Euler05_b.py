# 2520 is the smallest number that can be divided by 
# each of the numbers from 1 to 10 without any remainder.
# what is the smallest positive number that is evenly 
# divisible by all of the numbers from 1 to 20?
# (Answer: 232792560)

#  uses multiplication of prime factors to find LCM
# ~ 1,200,000 nanoseconds

import time

max_value = 20

def check_prime(number):
    for i in range(2, number):
        if number % i == 0:
            return False
    else:
        return True

start = time.perf_counter_ns()

prime_list=[]

for i in range(1, max_value + 1):
    #print(i, end="")
    x = i
    target_number = x
    current_number = x
    factors = []
    if check_prime(x): # incase x is prime itself
        factors.append(x)
    while check_prime(current_number) != True:
        for i in range(2, target_number):
            if check_prime(i):
                if current_number % i == 0:
                    factors.append(i)
                    current_number = int(current_number / i)
            if check_prime(current_number):
                factors.append(current_number)
                break
    factors.sort()
    #print(" Prime factors: ", factors)
    prime_list.append(factors)

output = set() # putting the list in a set filters unique values
for i in range(max_value):
    for x in prime_list[i]:
        output.add(x)

#print("Unique primes: ")
#print(output)

product = 1 # with 0 we'd end up with nothing

for i in output: # go thru set a prime at a time
    total = 0
    for j in range(max_value): # look for occurences of our prime
        count = prime_list[j].count(i) # and store the max number
        if count > total: # total is our highest yet
            total = count           
    for k in range(1, total + 1): # multiply our current product by prime
        #print(product, "*", i, end="") # according to how many times it appears
        product = product * i
        #print("=", product)
        
#print("Lowest common multiple: ", product)

duration = time.perf_counter_ns() - start

print("Answer: ", product)
print("Took: %s nanoseconds" % (duration))
