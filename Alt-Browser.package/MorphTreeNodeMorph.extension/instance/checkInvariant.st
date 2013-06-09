*Alt-Browser
checkInvariant
	"Check that this morph is correct regarding it's abstract contents."

	"We check that siblings are correctly aligned and have the right index."

	self
		withSiblingsDo: [ :each | 
			each assert: (each firstChild isNil or: [ each complexContents contents notNil ]).
			each complexContents item parentNode notNil
				ifTrue: [ 
					each
						assert:
							((each nextSibling isNil and: [ each complexContents item = each complexContents item parentNode contents last ])
								or: [ each nextSibling notNil ]).
					each nextSibling notNil
						ifTrue: [ 
							each
								assert:
									((each complexContents item parentNode contents indexOf: each complexContents item) + 1
										= (each nextSibling complexContents item parentNode contents indexOf: each nextSibling complexContents item)
										and: [ each complexContents item parentNode == each nextSibling complexContents item parentNode ]) ] ] ].
	self
		withSiblingsDo: [ :each | 
			each firstChild notNil
				ifTrue: [ each firstChild checkInvariant ] ]