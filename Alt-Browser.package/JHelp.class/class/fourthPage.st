pages
fourthPage
	^ HelpTopic
		title: 'The Jejak Trace Framework - Performance'
		contents: 'Performance and Overhead

1- Profiling the trace overhead

Untraced: 578ms
Traced(var): 7448ms
Slow down: 7448/578.0 = 12.885813148788927

Untraced: 518ms
Traced(literal): 6808ms
Slow down: 6808/518.0 = 13.142857142857142

The literal version may even be slower overall, whereas the literal version is really fast in VisualWorks.'