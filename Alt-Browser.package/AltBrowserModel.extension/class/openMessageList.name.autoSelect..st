instance creation
openMessageList: messageList name: aString autoSelect: aSelector
	" Tool registry compatibility. Disregard the name and consider autoselect as allways true."
	
	"In fact, due to the speed of scanning and opening each path in the tree, this is far too slow. Maybe a solution, but less than adequate, could be to only open path on the very first element, but load the history with the others : this solution works, but is not as good as the direct one. Left in case we find something else."

	^ self fullOnMethods: messageList