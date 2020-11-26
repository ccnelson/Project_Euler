' Placeholder

Module Euler02
	Sub Main( )


		Dim finalanswer As Integer = 0

		Dim tic As System.Diagnostics.Stopwatch = System.Diagnostics.Stopwatch.StartNew()




		Dim duration = tic.Elapsed.TotalMilliseconds

		System.Console.WriteLine("Answer:	" + finalanswer.ToString())
		System.Console.WriteLine("Took:	" + duration.ToString() + "ms")

	End Sub
End Module
