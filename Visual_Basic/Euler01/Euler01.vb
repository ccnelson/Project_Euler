' If we list all the natural numbers below 10 that are multiples of 3 or 5, 
' we get 3, 5, 6 and 9. The sum of these multiples is 23.
' Find the sum of all the multiples of 3 or 5 below 1000. 
' (Answer = 233168)

' solution uses inclusion-exclusion principle

Module Euler01
	Sub Main( )

		Dim sumofthrees As Integer = 0
		Dim sumoffives As Integer = 0
		Dim sumoffifteens As Integer = 0
		Dim finalanswer As Integer = 0

		Dim tic As System.Diagnostics.Stopwatch = System.Diagnostics.Stopwatch.StartNew()

		For i As Integer = 3 To 999 Step 3
			sumofthrees += i
		Next i

		For j As Integer = 5 To 999 Step 5
			sumoffives += j
		Next j

		For k As Integer = 15 To 999 Step 15
			sumoffifteens += k
		Next k

		finalanswer = (sumofthrees + sumoffives) - sumoffifteens

		Dim duration = tic.Elapsed.TotalMilliseconds

		System.Console.WriteLine("Answer:	" + finalanswer.ToString())
		System.Console.WriteLine("Took:	" + duration.ToString() + "ms")

	End Sub
End Module
