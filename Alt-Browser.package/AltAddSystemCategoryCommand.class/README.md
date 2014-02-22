An add category can add the category to a package (at least, this is the expected behavior) and, as a consequence, is associated to class categories (and packages?)

In fact, in the current incarnation, this is associated to the creation of a new RPackage, eventually inside an existing RPackageSet.

I have no idea about what would happen if I create a subcategory in the case of a RPackageSet containing only one category... Ok, it would work, since I would have to rebuilt the package set node.