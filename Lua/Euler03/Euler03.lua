-- C NELSON 2021
--[[ The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
(Answer = 6857) --]]

-- solution divides out all factors until largest prime factor remains

finalanswer = 0
n = 600851475143
div = 3

tic = os.clock()

nsqrt = math.sqrt(n)

if (n % 2 == 0) then
    while ( n % 2 == 0 ) do
        n = n / 2
    end
    if (n == 1) then
        div = 2
    end
end

while (n > 1 and div < nsqrt) do
    if (n % div == 0) then
        n = n / div
    else
        div = div + 2
    end
end

if (n ~= 1) then
    finalanswer = n
else
    finalanswer = div
end

toc = os.clock()
timeElapsed = toc - tic

print(string.format("Answer:\t%s", finalanswer))
print(string.format("Took:\t%.6f seconds", timeElapsed))