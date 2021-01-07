! C NELSON 2020
! If we list all the natural numbers below 10 that are multiples of 3 or 5, 
! we get 3, 5, 6 and 9. The sum of these multiples is 23.
! Find the sum of all the multiples of 3 or 5 below 1000. 
! (Answer = 233168)

! solution uses inclusion-exclusion principle

program Euler01b

    integer :: sumOfThrees = 0
    integer :: sumOfFives = 0
    integer :: sumOfFifteens = 0
    integer :: finalAnswer = 0

    real :: tic, toc
    call cpu_time(tic)

    do i=3, 999, 3
        sumOfThrees = sumOfThrees + i
    cycle    
    enddo

    do j=5, 999, 5
        sumOfFives = sumOfFives + j
    cycle    
    enddo

    do k=15, 999, 15
        sumOfFifteens = sumOfFifteens + k
    cycle    
    enddo
    
    finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens

    call cpu_time(toc)

    print *, "Answer:", finalAnswer
    print *, "Took:     ", toc - tic, "seconds"

end program Euler01b