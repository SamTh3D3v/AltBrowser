accessing
icon
	| iconSelector |
	iconSelector := self item icon.
	iconSelector ifNil: [ ^ nil ].
	(UITheme current respondsTo: iconSelector)
		ifTrue: [ ^ UITheme current perform: iconSelector ]
		ifFalse: [ ^ nil ]