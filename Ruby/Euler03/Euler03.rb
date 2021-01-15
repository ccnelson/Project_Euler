# C NELSON 2021
=begin
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
(Answer = 6857)
=end

# Solution divides out all factors until largest prime factor remains

finalAnswer = 0
n = 600851475143
div = 3

tic = Time.now

nsqrt = Math.sqrt(n)

if n & 1 != 1
    while n & 1 != 1 do
        n = n / 2
    end
    if n == 1
        div = 2
    end
end

while n > 1 && div < nsqrt do
    if n % div == 0
        n = n / div
    else
        div += 2
    end
end

finalAnswer =  n != 1 ? n : div

toc = Time.now
timeElapsed = toc - tic

print "Answer:\t" + finalAnswer.to_s
print "\nTook:\t%.6f" % timeElapsed
