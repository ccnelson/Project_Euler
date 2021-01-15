' C NELSON 2021
' The prime factors of 13195 are 5, 7, 13 and 29.
' What is the largest prime factor of the number 600851475143
' (Answer = 6857)

' solution divides out all factors until largest prime factor remains

Module Euler03
    Sub Main( )

        Dim finalAnswer As Long = 0
        Dim n as Long = 600851475143
        Dim div as Integer = 3

        Dim tic As System.Diagnostics.Stopwatch = System.Diagnostics.Stopwatch.StartNew()

        Dim nsqrt = Math.Sqrt(n)

        If (n And 1) <> 1 Then
            While (n And 1) <> 1
                n = n / 2
            End While
            If (n = 1) Then
                div = 2
            End If
        End If

        While (n > 1 And div < nsqrt)
            If (n MOD div = 0) Then
                n = n / div
            Else
                div += 2
            End If
        End While

        If (n <> 1) Then
            finalAnswer = n
        Else
            finalAnswer = div
        End If

        Dim timeElapsed = tic.Elapsed.TotalMilliseconds

        System.Console.WriteLine("Answer:" + vbtab + finalAnswer.ToString())
        System.Console.WriteLine("Took:" + vbtab + timeElapsed.ToString() + " ms")

    End Sub
End Module
