accessing
rebuildContents
	"Force a rebuild of the contents, to either : change the layout of the children items, or just because the contents has become out of sync with the children items."

	"Note that optimising contents as a cache is useless in terms of performance, because in most cases we rebuilt all the morphs that are representing them. However, to keep track of expanded / not expanded children morphs, nodes are remembered, so, when rebuilding the contents, we replace new nodes by their equivalent old node if it exists."
	
	"Why doing that? Because children creation is complex enough to delegate fullly to the subclasses."

	| oldContents |
	contents ifNil: [ ^ self ].
	oldContents := contents copy.
	contents := nil.
	contents := self contents collect: [ :each | oldContents detect: [ :old | old item == each item ] ifNone: [ each ] ]