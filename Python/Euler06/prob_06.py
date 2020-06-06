#The sum of the squares of the first ten natural numbers is,
#1**2 + 2**2 + ... + 10**2 = 385
#The square of the sum of the first ten natural numbers is,
#(1 + 2 + ... + 10)**2 = 55**2 = 3025
#Hence the difference between the sum of the squares of the
#first ten natural numbers and the square of the sum is
#3025 − 385 = 2640.
#Find the difference between the sum of the squares of the
#first one hundred natural numbers and the square of the sum.


max_val = 100
sum_o_sq = 0
for i in range(1, max_val + 1):
  x = i ** 2
  sum_o_sq = sum_o_sq + x

print(sum_o_sq)

sq_o_sum = 10
y = 0
for i in range(1, max_val + 1):
  y = y + i

sq_o_sum = y ** 2

print(sq_o_sum)

differ = sq_o_sum - sum_o_sq

print(differ)