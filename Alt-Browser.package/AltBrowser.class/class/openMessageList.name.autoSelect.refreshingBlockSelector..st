instance creation
openMessageList: messageList name: aString autoSelect: aSelector refreshingBlockSelector: ignored
	" Tool registry compatibility. Disregard the name and consider autoselect as allways true."

	^ self fullOnMethods: messageList