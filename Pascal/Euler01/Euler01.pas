{ If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) }

// solution uses inclusion-exclusion principle

program Euler01;

	uses sysutils;

	var
		sumofthrees : longint = 0;
		sumoffives : longint = 0;
		sumoffifteens : longint = 0;
		finalanswer : longint = 0;
		count : integer = 0;
		tic, toc, duration: TDateTime;

begin

	tic := Now;

	count := 3;
	while count < 1000 do
 		begin
  			sumofthrees := sumofthrees + count;
  			count := count + 3;
 		end;

 	count := 5;
 	while count < 1000 do
 		begin
  			sumoffives := sumoffives + count;
  			count := count + 5;
 		end;

 	count := 15;
 	while count < 1000 do
 		begin
  			sumoffifteens := sumoffifteens + count;
  			count := count + 15;
 		end;

 	finalanswer := (sumofthrees + sumoffives) - sumoffifteens;

 	toc := Now;
 	duration := toc - tic;

	writeln('Answer:	', finalanswer);
	writeln('Took:	', duration :0:6, ' seconds');

end.