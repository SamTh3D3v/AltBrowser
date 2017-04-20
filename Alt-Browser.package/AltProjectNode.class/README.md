I represent a project: either a ConfigurationOf, or a BaselineOf, with all related packages and dependents.

So my item is either a ConfigurationOf or a BaselineOf, and my contents is the list of packages manipulated by this project and present in the image.

(((MCWorkingCopy allManagers collect:  [ :e |
	e packageName  ]) select: [ :n | n beginsWith: 'BaselineOf' ]) asSortedCollection collect: [ :e | AltProjectNode with: e asSymbol ]) do: [ :e | e contents ].

(((MCWorkingCopy allManagers collect:  [ :e |
	e packageName  ]) select: [ :n | n beginsWith: 'ConfigurationOf' ]) asSortedCollection collect: [ :e | AltProjectNode with: e asSymbol ]) do: [ :e | e contents ].
