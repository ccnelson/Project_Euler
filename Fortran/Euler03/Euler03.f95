! C NELSON 2021
! The prime factors of 13195 are 5, 7, 13 and 29.
! What is the largest prime factor of the number 600851475143
! (Answer = 6857)

! solution divides out all factors until largest prime factor remains

program Euler03

    integer(kind=8) :: n = 600851475143_8
    double precision, parameter :: rn = 600851475143D+0         ! parameters are constant
    
    integer(kind=8) :: finalAnswer = 0               ! big enough to hold n if n is prime
    integer :: div = 3
    double precision, parameter :: nsqrt = sqrt(rn)  ! sqrt reuires a constant non integer

    real :: tic, toc
    call cpu_time(tic)

    if ((btest(n, 0)) .eqv. .false.) then               ! if n is even (0 is least sig. bit)
        do while ((btest(n, 0)) .eqv. .false.)
            n = n / 2
        end do
        if (n == 1) then
            div = 2
        end if
    end if

    do while (n > 1 .and. div < nsqrt)      ! divide out all odd factors, stop if n is prime
        if (modulo(n, div) == 0) then
            n = n / div
        else
            div = div + 2
        end if
    end do

    if (n == 1) then
        finalAnswer = div
    else
        finalAnswer = n
    end if

    call cpu_time(toc)

    print *, "Answer:", finalAnswer
    print *, "Took: ", toc - tic, "seconds"

end program Euler03