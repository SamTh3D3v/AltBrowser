private
rewriteStringOfVars: inS into: outS
	"Given the streams at this position, change 'var1 var2 var3' into: {var1.var2.var3}."

	inS atEnd
		ifTrue: [ ^ self ].
	[ inS peek ~= $' ] whileTrue: [ outS nextPut: inS next ].
	outS nextPut: ${.
	inS next.
	[ inS peek ~= $' ]
		whileTrue: [ 
			inS peek ~= $ 
				ifTrue: [ outS nextPut: inS next ]
				ifFalse: [ 
					outS nextPut: $..
					inS next.
					[ inS peek = $  whileTrue: [ outS nextPut: inS next ] ] ] ].
	inS next.
	outS << '}'