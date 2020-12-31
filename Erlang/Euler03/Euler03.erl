% C NELSON 2020
% The prime factors of 13195 are 5, 7, 13 and 29.
% What is the largest prime factor of the number 600851475143
% (Answer = 6857)

% solution divides out all factors until largest prime factor remains

-module(euler03).
-import(math,[sqrt/1]).
-export([start/0, loop/4]).

start() ->
    Num = 600851475143,
    Div = 3,
    Nsqrt = sqrt(Num),
    loop(Num, Div, Nsqrt, 0).

% divide out all evens
loop(N, D, Nsqrt, P) when (N rem 2) =:= 0 ->
    NewN = N div 2,
    if ( NewN =:= 1 ) ->
        NewD = 2;
    true ->
        NewD = D
    end,
    loop(NewN, NewD, Nsqrt, P);

% divide out factors while number probably isnt prime (D < Nsqrt)
loop(N, D, Nsqrt, P) when N > 1, D < Nsqrt ->
    if ( N rem D ) =:= 0 ->
        NewD = D,
        NewN = N div D;
    true ->
        NewD = D + 2,
        NewN = N
    end,
    loop(NewN, NewD, Nsqrt, P);

% D > Nsqrt indicates number is prime. Flag with P = 1
loop(N, D, Nsqrt, P) when N > 1, D > Nsqrt, P =:= 0 ->
    NewP = 1,
    loop(N, D, Nsqrt, NewP);

% set final answer according to P flag
loop(N, D, Nsqrt, P) when N =:= 1;
                          P =:= 1 ->
    if N =:= 1, P =:= 0 ->
        FinalAnswer = D;
    true ->
        FinalAnswer = N
    end,
    io:format("Answer: ~w~n", [FinalAnswer]).
