testing
isEnabled
	^ [Clipboard clipboardText notEmpty] on: ZnInvalidUTF8 do:[false]