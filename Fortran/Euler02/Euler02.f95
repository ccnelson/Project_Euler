! Placeholder

program Euler02

    real :: finalanswer=0

    real :: tic, toc
    call cpu_time(tic)

    

    call cpu_time(toc)

    print *, "Answer:   ", finalanswer
    print *, "Took:     ", toc - tic, "seconds"

end program Euler02