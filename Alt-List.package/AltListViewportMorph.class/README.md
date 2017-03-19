I contain visible rows/items in a tree morph. 

* Exposed items are a dictionary index -> morph.
* Two levels of updates: from the model (refresh) and from the view / scrollbars (changed). The latter is optimized.
* Submorphs items building is delayed until drawing time.
* I don't know in advance the item height; this is an information I never ask the model; it is provided when I get the item Morphic representation.
* The item is in charge of setting up indentation and collapse/expand behavior, not me.
* Offset information (both vertical and horizontal) is kept by the scrollbars.
* My model has a list like interface (#at:, #size; #indexOf:) but I expect those operators to be expensive, so I use streams (and reverse streams) to iterate over the model.
* When drawing myself, I block my submorphs from reporting damages since I move them around before drawing them.
* Animation update is delayed / updated at drawing time (to try to minimize jitter?)