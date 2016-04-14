user interface
label
	"Take care of errors that might occur during label access"

	^ [ item longLabel ]
		on: Error
		do: [ :error | 
			item label , ': ' , 'Error while accessing label of '
				, item accessorCode printString ]