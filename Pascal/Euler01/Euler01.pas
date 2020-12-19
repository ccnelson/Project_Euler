// C NELSON 2020
{ If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) }

// solution uses inclusion-exclusion principle

program Euler01;

    uses sysutils;

    var
        sumOfThrees : longint = 0;
        sumOfFives : longint = 0;
        sumOfFifteens : longint = 0;
        finalAnswer : longint = 0;
        count : integer = 0;
        tic, toc, timeElapsed: TDateTime;

begin

    tic := Now;

    count := 3;
    while count < 1000 do
        begin
            sumOfThrees := sumOfThrees + count;
            count := count + 3;
        end;

    count := 5;
    while count < 1000 do
        begin
            sumOfFives := sumOfFives + count;
            count := count + 5;
        end;

    count := 15;
    while count < 1000 do
        begin
            sumOfFifteens := sumOfFifteens + count;
            count := count + 15;
        end;

    finalAnswer := (sumOfThrees + sumOfFives) - sumOfFifteens;

    toc := Now;
    timeElapsed := toc - tic;

    writeln('Answer:', #9, finalAnswer);
    writeln('Took:', #9, timeElapsed :0:6, ' seconds');

end.
