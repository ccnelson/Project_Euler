! C NELSON 2020
! Each new term in the Fibonacci sequence is generated by 
! adding the previous two terms. 
! By starting with 1 and 2, the first 10 terms will be:
! 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
! By considering the terms in the Fibonacci sequence whose 
! values do not exceed four million,
! find the sum of the even-valued terms.
! (Answer = 4613732)

! solution uses bit test to examine least significant bit

program Euler02

    integer :: n1 = 1
    integer :: n2 = 0
    integer :: n3 = 0
    integer :: finalAnswer = 0

    real :: tic, toc
    call cpu_time(tic)

    do while (n3 < 4000000)
        n3 = n1 + n2
        if ((btest(n3, 0)) .eqv. .false.) then
            finalAnswer = finalAnswer + n3
        end if
        n1 = n2
        n2 = n3
    end do
    
    call cpu_time(toc)

    print *, "Answer:", finalAnswer
    print *, "Took:    ", toc - tic, "seconds"

end program Euler02