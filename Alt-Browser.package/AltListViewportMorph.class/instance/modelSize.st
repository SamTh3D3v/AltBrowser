private
modelSize
	^ cachedModelSize ifNil: [ cachedModelSize := self owner model size ]