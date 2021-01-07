! C NELSON 2021
! If we list all the natural numbers below 10 that are multiples of 3 or 5, 
! we get 3, 5, 6 and 9. The sum of these multiples is 23.
! Find the sum of all the multiples of 3 or 5 below 1000. 
! (Answer = 233168)

! solution uses arithmetic series formula with inclusion-exclusion principle

program Euler01

    integer :: sumOfThrees = 0
    integer :: sumOfFives = 0
    integer :: sumOfFifteens = 0
    integer :: finalAnswer = 0

    real :: tic, toc
    call cpu_time(tic)

    sumOfThrees = seqsum(3, 3, real(999/3))
    sumOfFives = seqsum(5, 5, real(999/5))
    sumOfFifteens = seqsum(15, 15, real(999/15))

    finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens

    call cpu_time(toc)

    print *, "Answer:", finalAnswer
    print *, "Took:     ", toc - tic, "seconds"

end program Euler01

! arithmetic series formula : Sn = n/2(2a+(n-1)d)
! a = 1st term, d = common difference, n = no. of terms
function seqsum(a, d, n)
    
    integer :: a
    integer :: d
    real :: n

    seqsum = (n / 2) * (2 * a + (n - 1) * d)

end function seqsum