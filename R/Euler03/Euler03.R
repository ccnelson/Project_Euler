# C NELSON 2021
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143
# (Answer = 6857)

# solution divides out all factors until largest prime factor remains

options(scipen = 999)  # disable scientific notation

finalAnswer = 0
n = 600851475143
div = 3

tic <- Sys.time()

nsqrt = floor(sqrt(n))

if (n %% 2 == 0)
{
    while (n %% 2 == 0)
    {
        n = n %/% 2
    }
    if (n == 1)
    {
        div = 2
    }
}

while ((n > 1) && (div < nsqrt))
{
    if (n %% div == 0)
    {
        n = n %/% div
    }
    else
    {
        div = div + 2
    }
}

finalAnswer <- if (n != 1) n else div

toc <- Sys.time()
timeElapsed = toc - tic

cat("Answer:", finalAnswer, "\n")
print(timeElapsed)
