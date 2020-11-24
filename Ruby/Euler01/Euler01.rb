=begin
If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168)
=end

# solution uses inclusion-exclusion principle

sumofthrees = 0
sumoffives = 0
sumoffifteens = 0
finalanswer = 0

tic = Time.now

(3..999).step(3) do |i|
	sumofthrees += i
end
(5..999).step(5) do |j|
	sumoffives += j
end
(15..999).step(15) do |k|
	sumoffifteens += k
end

finalanswer = (sumofthrees + sumoffives) - sumoffifteens;

toc = Time.now
elapsed = toc - tic

print "Answer:\t" + finalanswer.to_s
print "\nTook:\t"
print "%.6f" % elapsed
