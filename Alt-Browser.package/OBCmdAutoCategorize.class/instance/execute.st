execution
execute
	(self organization listAtCategoryNamed: ClassOrganizer default) 
		do: [ :each | self categorize: each ]