! If we list all the natural numbers below 10 that are multiples of 3 or 5, 
! we get 3, 5, 6 and 9. The sum of these multiples is 23.
! Find the sum of all the multiples of 3 or 5 below 1000. 
! (Answer = 233168)

! solution uses inclusion-exclusion principle

program Euler01

    real :: sumofthrees=0
    real :: sumoffives=0
    real :: sumoffifteens=0
    real :: finalanswer=0

    real :: tic, toc
    call cpu_time(tic)

    do i=3, 999, 3
        sumofthrees = sumofthrees + i
    cycle    
    enddo

    do j=5, 999, 5
        sumoffives = sumoffives + j
    cycle    
    enddo

    do k=15, 999, 15
        sumoffifteens = sumoffifteens + k
    cycle    
    enddo
    
    finalanswer = (sumofthrees + sumoffives) - sumoffifteens

    call cpu_time(toc)

    print *, "Answer:   ", finalanswer
    print *, "Took:     ", toc - tic, "seconds"

end program Euler01