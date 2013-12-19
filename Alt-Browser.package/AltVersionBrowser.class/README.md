A subclass of VersionsBrowser to deal with method definitions instead of change records. It allows one to scan a git repository for all versions of a method, even if it misses renaming.

What is missing? A way to convert changeset records into MCDefinitions, so that we have a unified view of the history.