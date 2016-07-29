pages
secondPage
	^ HelpTopic
		title: 'The Jejak Trace framework -  User Manual'
		contents: 'User Manual

1- GUI

The tracer gui is integrated under the Tools menu, at Jejak Trace Viewer.

The left pane shows the recorded event trace, the right pane is the source code
linked to an event selected in the right pane. Selecting an event on the left will
display the source code of the method which generated this event, and select the
statement of the event.

Three buttons allows to handle the tracer behavior:
- Erase Events : erase all recorded events.
- Remove Probes: remove all probes from all traced methods, revert them to the original source.
- Update: Update the list of events.

2- Probes

Probes are inserted by asking the tracer to analyse methods. This is done in the
system browser, by selecting a method and the command Toggle Trace. Once
this is done, the method will generate events as soon as it is executed (typically
by executing code in a workspace or a test case).

3- Usual use

- Choose a method (or a few methods) of interest.
- Toggle trace on those methods through a system browser.
- Run a few test cases.
- Open or Update the Trace Viewer to see the trace.
- Explore the trace.
- Remove the probes, erase the events and redo.

4- Example

- Toggle Trace on VTExampleArray>>rleast:
- Run test case VTTests>>testCArleast5
- Open Trace Viewer and explore.
- Remove Probes.
- Erase events.

execute
	| method |
	method := self compiledMethod.
	(JInstrumentedMethods includesKey: (Array with: method methodClass with: method selector))
		ifTrue: [ 
			method methodClass
				addSelector: method selector
				withMethod: (JInstrumentedMethods at: (Array with: method methodClass with: method selector)) ]
		ifFalse: [ JVariableProbesWriter analyse: method selector in: method methodClass ].
'