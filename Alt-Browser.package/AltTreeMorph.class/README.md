I'm an implementation of a tree, in an optimised / dedicated way, reusing the fast table approach (only building and displaying the visible rows).

Since I am a tree, what is indexing is dependent on how nodes in the tree are expanded or not.

Everything too tree like (prior morph or whatever) won't exist. From the display point of view, this is a list.

Two types of refresh / updates:
- data updates (refresh?)
- display updates and changes

The viewport is in charge of effective display.

We optimize accesses to the model, expecting that #at: (and #size) may be expensive.

The fact that row item morphs are created only during display is... a hack around the non mastery of self changed (which is sent far too many times). Now, if the response to changed is correct (even if received multiple times), then it could.