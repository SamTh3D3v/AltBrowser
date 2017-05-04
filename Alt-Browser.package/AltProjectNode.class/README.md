I represent a project: either a ConfigurationOf, or a BaselineOf, with all related packages and dependents.

So my item is either a ConfigurationOf or a BaselineOf key, and my contents is the list of packages manipulated by this project and present in the image (if the value part of my item is empty). Otherwise it behaves as a category.

(((MCWorkingCopy allManagers collect:  [ :e |
	e packageName  ]) select: [ :n | n beginsWith: 'BaselineOf' ]) asSortedCollection collect: [ :e | AltProjectNode with: e asSymbol -> OrderedCollection new ]) do: [ :e | e contents ].

(((MCWorkingCopy allManagers collect:  [ :e |
	e packageName  ]) select: [ :n | n beginsWith: 'ConfigurationOf' ]) asSortedCollection collect: [ :e | AltProjectNode with: e asSymbol -> OrderedCollection new ]) do: [ :e | e contents ].

Note: the notion of a project is a weak concept and that means it needs to be refined as it goes along. A project behaves as a category, with a first element a bit special (configuration or baseline); the rest is filled at initialisation or as packages are added that belongs to that configuration. Unloading the configuration keeps the packages inside the project. Adding a package put it in the project (but may be it isn't tracked by the configuration or baseline). 