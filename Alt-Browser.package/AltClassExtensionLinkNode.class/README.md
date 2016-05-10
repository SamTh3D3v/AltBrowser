This node is a link to the target class extension.

It was used to put in a single place the extension methods: in the relevant package, and therefore leave a link to those methods in the class organisation: a click or a selection would then jump to the right package (animated of course).

But, in practice, it was not as nice as expected. It disrupts a per-class exploration because there is a cut between the normal methods and the extensions... and often extensions are in fact usefull additions to the object behavior, and are interesting to study to understand the class (this means maybe that extensions compensate for difficulties to extend objects API). It also disrupt keyboard navigation by introducting jumps when you open a class and go through extensions first, jumping to the package and interrupting the keyboard navigation.

So, for now, the code is inactive and remain as an experiment.