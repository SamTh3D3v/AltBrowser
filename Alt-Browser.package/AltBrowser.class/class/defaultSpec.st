spec
defaultSpec
	<spec>
	
	^ {#ComposableSpec.
			#add:. {
				{#model. #textModel}.
				#layout:.
				{#FrameLayout. #fractions:offsets:. (0.3 @ 0 corner: 1 @ 1). (0 @ 0 corner: 0 @ 0)}
			}.
			#add:. {
				{#model. #treeModel}.
				#layout:.
				{#FrameLayout. #fractions:offsets:. (0 @ 0 corner: 0.3 @ 1). (0 @ 0 corner: 0 @ 0)}
			}
		}