This command opens a text field and allow for typing on the fly in it, with the underlying tree being used for the search.

Target behavior:
- On every key track down which tree node starts with the prefix and select it.
(take in account visible names, rely on asString to the node)
- On tab, complete the current tree node and open it
- On CR or navigation key, close text entry
There is a need to improve and fine tune the key filtering. Maybe use more of Keymapping ?

baseIndex: first selected node when starting to type.

Uses AltTextSearchMorph, a copy of StringMorphEditor, it has the logic for disappearing and is single line. StringMorphEditor is tied to a StringMorph, so I need my own subclass of TextMorph with a copy of the logic.

Behavior is fairly specific to the way the tree is handled, but should show a nice blueprint about searching with on the fly search area creation.

Adding the command to a MorphTreeMorph just requires the following line:

aMorphTreeMorph on: #keyStroke send: #startSearch:for: to: AltKeyboardSearchInTree.