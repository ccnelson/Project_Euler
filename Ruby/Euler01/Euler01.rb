# C NELSON 2020
=begin
If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168)
=end

# solution uses inclusion-exclusion principle

sumOfThrees = 0
sumOfFives = 0
sumOfFifteens = 0
finalAnswer = 0

tic = Time.now

(3..999).step(3) do |i|
    sumOfThrees += i
end
(5..999).step(5) do |j|
    sumOfFives += j
end
(15..999).step(15) do |k|
    sumOfFifteens += k
end

finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens;

toc = Time.now
timeElapsed = toc - tic

print "Answer:\t" + finalAnswer.to_s
print "\nTook:\t%.6f" % timeElapsed
