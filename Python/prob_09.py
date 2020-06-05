# A Pythagorean triplet is a set of three natural numbers,
# a < b < c, for which,
# a**2 + b**2 = c**2
# For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.
# There exists exactly one Pythagorean triplet
# for which a + b + c = 1000.
# Find the product abc.


# this is verry slow
#for a in range(1001):
#    for b in range(1001):
#        for c in range(1001):
#            if a < b & b < c:
#                if a**2 + b**2 == c**2:
#                    if (a + b + c) == 1000:
#                        print( a * b * c)
#                        #print(str(a) + "" + str(b) + "" + str(c))

#this is the proper way
x = 1000
for a in range(1, x+1):
    for b in range(a+1, x+1):
        c = x - a - b
        if a * a + b * b == c * c:
            print(a*b*c)

                    
