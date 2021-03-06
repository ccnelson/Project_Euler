// C NELSON 2021
{ If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) }

// solution uses arithmetic series formula with inclusion-exclusion principle

program Euler01;

    uses sysutils;

    var
        sumOfThrees : longint = 0;
        sumOfFives : longint = 0;
        sumOfFifteens : longint = 0;
        finalAnswer : longint = 0;
        tic, toc, timeElapsed: TDateTime;

// arithmetic series formula : Sn = n/2(2a+(n-1)d)
// a = 1st term, d = common difference, n = no. of terms
function seqsum(a : integer; d : integer; n : real): longint;

begin
    seqsum := longint(Round((n / 2) * (2 * a + (n - 1) * d)));
end;

// start main
begin

    tic := Now;

    sumOfThrees := seqsum(3, 3, (999 div 3));
    sumOfFives := seqsum(5, 5, (999 div 5));
    sumOfFifteens := seqsum(15, 15, (999 div 15));

    finalAnswer := (sumOfThrees + sumOfFives) - sumOfFifteens;

    toc := Now;
    timeElapsed := toc - tic;

    writeln('Answer:', #9, finalAnswer);
    writeln('Took:', #9, timeElapsed :0:6, ' seconds');

end.
