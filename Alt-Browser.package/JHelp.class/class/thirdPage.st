pages
thirdPage
	^ HelpTopic
		title: 'The Jejak Trace framework - Framework'
		contents: 'Framework Guide

1- Elements of the framework

- JProbesWriter : writes probes in the AST of a method before recompilation.
- JAbstractRecord : record classes for recording events.
- JRecordVisiteur : classes for visiting a recorded event trace and changing it.
- JViewer : the GUI.
- JCollecteur : the singleton to link to a recording events object.
- JRecorded : an object recording events.
- JInstrumentedMethods : where all methods with probes are kept.
- JCmdTrace : OmniBrowser integration.

2- JProbesWriter

The core of the system. Requires a smalltalk parser and compiler to generate the AST for the method, as well as compiling a transformed AST. A simpler variant has less integration with the compiler, but let the probed code be visible.'