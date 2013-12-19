An AltTreeNodeModel represent a node for the tree. It reroutes most of it's request to the underlying item, and its the item which does the adaptation (a single nodel model wrapper representing all the different model types).

It caches its contents however, and is environment aware.