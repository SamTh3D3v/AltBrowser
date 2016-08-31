private
modelSize
	^ cachedModelSize ifNil: [ self owner model ifNil: [ ] ifNotNil: [ cachedModelSize := self owner model size] ]