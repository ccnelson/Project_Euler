#A palindromic number reads the same both
#ways. The largest palindrome made from
#the product of two 2-digit numbers is
# 9009 = 91 × 99.
#Find the largest palindrome made from
#the product of two 3-digit numbers.

answer = 0

for i in range(100, 999): # start from 100 as 3 digit
    for j in range(100, 999):
        product = i * j
        textual = str(product)
        if textual == textual[::-1] and product > answer: # [::-1] finds palindrome
            answer = product

print(answer)
