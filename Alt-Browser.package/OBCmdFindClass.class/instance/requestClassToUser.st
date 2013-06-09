private
requestClassToUser
	^ OBCompletionRequest new
		prompt: 'Find Class';
		searchBlock: [ :string | self findClassIn: target environment pattern: string ];
		labelBlock: [ :class | class name ];
		iconBlock: [ :class | class browserIcon ];
		signal