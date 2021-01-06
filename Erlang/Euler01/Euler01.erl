% C NELSON 2020
% If we list all the natural numbers below 10 that are multiples of 3 or 5, 
% we get 3, 5, 6 and 9. The sum of these multiples is 23.
% Find the sum of all the multiples of 3 or 5 below 1000. 
% (Answer = 233168)

% solution uses arithmetic series formula with inclusion-exclusion principle

-module(euler01).
-export([start/0, seqsum/3]).

% arithmetic series formula : Sn = n/2(2a+(n-1)d)
% A = 1st term, D = common difference, N = no. of terms
seqsum(A, D, N) ->
    (N / 2) * (2 * A + (N - 1) * D).

start() ->
    SumOfThrees = seqsum(3, 3, (999 div 3)),
    SumOfFives = seqsum(5, 5, (999 div 5)),
    SumOfFifteens = seqsum(15, 15, (999 div 15)),

    FinalAnswer = (SumOfThrees + SumOfFives) - SumOfFifteens,

    io:fwrite("Answer: ~w~n",[FinalAnswer]).
