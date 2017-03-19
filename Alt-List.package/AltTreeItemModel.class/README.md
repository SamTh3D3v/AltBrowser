I'm a graph item. I represent a tree item and I know of the parent / child relationship I have.

For convenience, tests and examples, a complete tree can be created from an array of arrays (of arrays and so on).

I don't have the normal Model behavior, I only have an announcer.

By default, I have a hiddent root sitting at index 0 (see changes in my behavior when my parent is nil).

I am polymorphic to a list: the list object itself sits as the root item (0) and all elements of the list are the [1-n] items.