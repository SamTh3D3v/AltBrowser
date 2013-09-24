accessing
startupAction
	"I assume here that the receiver is always a class, but I check if the class exist!"

	"Specific to this class:
		- runOnce is left to false. Otherwise, when building a new image, the first run of loading a configuration or a slice would first run the setting, see that it isn't doable, and set has run to true so that it wouldn't be run again. Of course, this would also happen if we try to load first thing a slice correcting the bug.
		- the startup action check if the class exist before being run. This protects agains the most obvious error which is package not yet loaded in the image."

	| targetSymbol currentValue |
	targetSymbol := self target isSymbol
		ifTrue: [ self target ]
		ifFalse: [ self target name asSymbol ].
	currentValue := self targetSelector
		ifNil: [ (Smalltalk at: targetSymbol) perform: self getSelector ]
		ifNotNil: [ :s | ((Smalltalk at: targetSymbol) perform: s) perform: self getSelector ].
	^ StartupAction
		name: self label
		code:
			(String
				streamContents: [ :s | 
					s << '(Smalltalk includesKey: '.
					targetSymbol asSymbol printOn: s.
					s << ') ifTrue: ['.
					self targetSelector ifNotNil: [ s << '(' ].
					s << '(Smalltalk at: '.
					targetSymbol asSymbol printOn: s.
					self targetSelector
						ifNotNil: [ :ts | 
							s << ') perform: '.
							ts printOn: s ].
					s << ') perform: '.
					self setSelector asSymbol printOn: s.
					s << ' with: ('.
					currentValue settingStoreOn: s.
					s << ')]' ])