instance creation
openMessageList: messageList name: aString autoSelect: aSelector
	" Tool registry compatibility. Disregard the name and consider autoselect as allways true."

	^ self fullOnMethods: messageList