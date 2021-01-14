// C NELSON 2021
{ The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
(Answer = 6857) }

// solution divides out all factors until largest prime factor remains

program Euler03;

    uses sysutils;

    var
        finalAnswer : int64 = 0;
        n : int64 = 600851475143;
        d : int64 = 3;
        nsqrt : real;
        tic, toc, timeElapsed: TDateTime;
        
begin

    tic := Now;
    
    nsqrt := Sqrt(n);

    if (n and 1 <> 1) then
        while (n and 1 <> 1) do
            begin
                n := n div 2;
            end;
            if (n = 1) then
                d := 2;

    while ((n > 1) and (d < nsqrt)) do
        begin
            if (n mod d = 0) then
                n := n div d
            else
                d := d + 2;
        end;

    if (n <> 1) then
        finalAnswer := n
    else
        finalAnswer := d;
    
    toc := Now;
    timeElapsed := toc - tic;

    writeln('Answer:', #9, finalAnswer);
    writeln('Took:', #9, timeElapsed :0:6, ' seconds');

end.
