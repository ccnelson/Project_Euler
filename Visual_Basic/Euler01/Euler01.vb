' C NELSON 2021
' If we list all the natural numbers below 10 that are multiples of 3 or 5, 
' we get 3, 5, 6 and 9. The sum of these multiples is 23.
' Find the sum of all the multiples of 3 or 5 below 1000. 
' (Answer = 233168)

' solution uses arithmetic series formula with inclusion-exclusion principle

Module Euler01
    Sub Main( )

        Dim tic As System.Diagnostics.Stopwatch = System.Diagnostics.Stopwatch.StartNew()

        Dim sumOfThrees = SeqSum(3, 3, (999\3))
        Dim sumOfFives = SeqSum(5, 5, (999\5))
        Dim sumOfFifteens = SeqSum(15, 15, (999\15))

        Dim finalAnswer = (sumOfThrees + sumOfFives) - sumOfFifteens

        Dim timeElapsed = tic.Elapsed.TotalMilliseconds

        System.Console.WriteLine("Answer:" + vbtab + finalAnswer.ToString())
        System.Console.WriteLine("Took:" + vbtab + timeElapsed.ToString() + " ms")

    End Sub

    ' arithmetic series formula : Sn = n/2(2a+(n-1)d)
    ' a = 1st term, d = common difference, n = no. of terms
    Public Function SeqSum(ByVal a As Integer, ByVal d As Integer, ByVal n as Double) As Double
        Return (n / 2) * (2 * a + (n - 1) * d)
    End Function

End Module
