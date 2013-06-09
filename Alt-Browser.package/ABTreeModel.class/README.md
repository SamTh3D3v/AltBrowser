An ABTreeModel is an extension of TreeModel to handle drag and drop.

My problem with the drag and drop is that I loose the wrapper object (and therefore the logic) which is needed when the drag starts. I can :
* add another level of wrapper object below the list objects.
* have only one type of list wrapper object and my own wrappers.
* subclass the PluggableTreeMorph.