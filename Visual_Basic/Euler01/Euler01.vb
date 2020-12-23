' C NELSON 2020
' If we list all the natural numbers below 10 that are multiples of 3 or 5, 
' we get 3, 5, 6 and 9. The sum of these multiples is 23.
' Find the sum of all the multiples of 3 or 5 below 1000. 
' (Answer = 233168)

' solution uses inclusion-exclusion principle

Module Euler01
    Sub Main( )

        Dim sumOfThrees As Integer = 0
        Dim sumOfFives As Integer = 0
        Dim sumOfFifteens As Integer = 0
        Dim finalAnswer As Integer = 0

        Dim tic As System.Diagnostics.Stopwatch = System.Diagnostics.Stopwatch.StartNew()

        For i As Integer = 3 To 999 Step 3
            sumOfThrees += i
        Next i

        For j As Integer = 5 To 999 Step 5
            sumOfFives += j
        Next j

        For k As Integer = 15 To 999 Step 15
            sumOfFifteens += k
        Next k

        finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens

        Dim timeElapsed = tic.Elapsed.TotalMilliseconds

        System.Console.WriteLine("Answer:" + vbtab + finalAnswer.ToString())
        System.Console.WriteLine("Took:" + vbtab + timeElapsed.ToString() + " ms")

    End Sub
End Module
