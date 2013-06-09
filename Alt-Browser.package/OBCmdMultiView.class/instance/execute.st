execution
execute
	| viewType |
	viewType := OBChoiceRequest 
		prompt: nil 
		labels: #('source' 'pretty print' 'decompile' 'byte codes' ) 
		values: #(showSource showPrettyPrint showDecompile showByteCodes).
	viewType isNil
		ifFalse: [ self perform: viewType ]