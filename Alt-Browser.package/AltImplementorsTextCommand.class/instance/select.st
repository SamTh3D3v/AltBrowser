execution
select
	"Use a secondary selection on the relevant text to show it. Attempt."

	| sels |
	target textMorph paragraph secondarySelection: (sels := node selectorParts collect: [ :p | p start to: p stop ])