accessing
startupAction
	"I assume here that the receiver is always a class, but I check if the class exist!"

	"StartupAction is too stupid to handle that correctly; it should be a runOnce once the guard is true, but this can't be done with the current framework, since the failure would take place before we have a chance of uploading a fix. And if the settings framework was done halfway correctly, I wouldn't have to do that in the first place."

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