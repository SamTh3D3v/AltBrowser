catalog
catalogKeyClassesAndExample

	^ '
The core class is AltBrowser. On the class side, it maintain an abstract tree of the code base and track all code updates (class, package and method additions, changes and removal). On the instance side, it maintain a simple GUI view filtered by a RB environment, with updates triggered by the class side. The GUI is a tree pane and a code pane, nothing more.

The abstract tree is build out of AltAbstractNode subclasses, one for each type of software system component. Theses nodes have a framework for : context-based naming, tree search, menu building (tree and text), keyboard shortcut building (tree and text), code updates, drag and drop, commands (see below), accept and double click, environment filtering, and stay similar to the MorphTreeNodeModel framework for building childrens.

All menus and shortcuts are build out of AltCommand subclasses objects. The command framework in the nodes allow for easy extension by other packages, and commands at core are simply : a label, [an icon], activation conditions, [ a shortcut ] , and an execute. Interesting commands are AST-based (AltAstNodeCommand subclasses : the origin of SmartSuggestions), and the RB based commands.

Small additions of interest are :

a method version browser able to query a gitfiletree repository instead of the change log : AltVersionBrowser.

in place text-based search in the tree : AltKeyboardSearchInTree.
'