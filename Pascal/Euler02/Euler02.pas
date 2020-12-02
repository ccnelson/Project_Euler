{ Placeholder }

// Placeholder

program Euler02;

	uses sysutils;

	var
		finalanswer : longint = 0;
		tic, toc, duration: TDateTime;

begin

	tic := Now;

	
 	toc := Now;
 	duration := toc - tic;

	writeln('Answer:	', finalanswer);
	writeln('Took:	', duration :0:6, ' seconds');

end.