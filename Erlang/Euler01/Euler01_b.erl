% C NELSON 2020
% If we list all the natural numbers below 10 that are multiples of 3 or 5, 
% we get 3, 5, 6 and 9. The sum of these multiples is 23.
% Find the sum of all the multiples of 3 or 5 below 1000. 
% (Answer = 233168)

% solution uses inclusion-exclusion principle

-module(euler01_b).
-import(lists,[sum/1]).
-export([start/0]).

start() ->
    ListOfThrees = lists:seq(3, 999, 3),
    SumOfThrees = sum(ListOfThrees),

    ListOfFives = lists:seq(5, 999, 5),
    SumOfFives = sum(ListOfFives),

    ListOfFifteens = lists:seq(15, 999, 15),
    SumOfFifteens = sum(ListOfFifteens),

    FinalAnswer = (SumOfThrees + SumOfFives) - SumOfFifteens,

    io:fwrite("Answer: ~w~n",[FinalAnswer]).
