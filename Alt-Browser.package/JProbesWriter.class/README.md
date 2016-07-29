This class is a root for subclasses that will modify a method by writing tracing code and probes. Basically, it takes a method parse tree (MethodNode) and return a new parse tree.

mclass: contains the class of the method we are processing.
no: the current node counter.

How to use no? Record in a temporary the no at the beginning of the processing of the node; this will uniquely identify the node.
