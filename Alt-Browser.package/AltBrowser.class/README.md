An AltBrowser is a complete alternative system browser, message list and finder.

It builds a representation of  the code structure as a abstract tree, out of AltAbstractNode, in the class side. That tree is kept on the class side, and is connected to all the system announcements tracking code changes (loading, creating, compiling, etc...).

Each instance handle the display of the overall tree in a GUI and an environment (a Refactoring Browser environment). The GUI is simply an AltTreeMorph instance and a PluggableTextMorph, and the context menus for both morphs. The instance reference a display tree based on AltTreeItemModel which is manipulated by the user interactively and also filtered by the refactoring environment associated with the instance (for example restricted to a package / a class / a set of selectors).

The instance is listening to events from the class to be able to update the relevant nodes for display. It also has an history (for navigation). It coordinates the building of context menus, shortcuts and a few user events (drag and drop). It has utility functions to relate an abstract item, a node model and a node morph, because it is common to have to update the tree (or the display of a node) out of a change event on an item.

Starting point for interesting code:
- context menu building : #buildTextMenu:, #buildTreeMenu:
- contextual key combinations : #updateTextKeymap, #updateTreeKeymap
- drag and drop in the tree: #acceptDroppingMorph:event:inMorph:, ...
- updating (for updates from the class about code change events)