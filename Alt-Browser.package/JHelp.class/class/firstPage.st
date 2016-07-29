pages
firstPage
	^ HelpTopic
		title: 'The Jejak Trace framework - Overview'
		contents: 'INTRODUCTION

During the VALMADEO project (a PRIR/Région Bretagne funded project directed by
C. Dezan, <dezan@univ-brest.fr>), we needed a tool to study in details how some
algorithms (error correcting codes) could work without errors, but with degraded
performance. Execution and compilation would report no errors, but the performance
of the error correcting coding and decoding would be several dB below the target.
The error correcting code was looping hundreds of times over each block of data,
making step by step debugging unusable. Profiling, message tallies were too coarse
to tell us anything. We needed a different tool.

The answer was this trace tool : a framework for injecting probes into methods, and
record their execution. It can record an execution to the smallest detail (all calls, all
values, all assignments), that over a long sequence (hundreds or thousands of calls),
and let one navigate freely through the recorded trace along with the traced source
code. It is capable of tracing system, startup or display methods, without interruption
or blocking the overall image, allowing for very fine non-intrusive system analysis.

It has been used for debugging turbo codes implementations, algorithm understanding
on turbo codes, and memory behavior analysis for embedded systems design space
exploration.

It was first implemented on VisualWorks 7.5 in 2007 by T. Goubier <thierry.goubier@gmail.com>,
then ported in 2012 to Pharo 1.4.'