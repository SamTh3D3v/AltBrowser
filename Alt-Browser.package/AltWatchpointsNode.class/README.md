Gives access to all watchpoints in the current environment.

List of class / method.

Unable to see added watchpoints by other means than myself, since the default watchpoint api doesn't announce anything (including for its own gui :facepalm:).

Maybe I need to add a watchpoint on the watchpoint API?

Note that watchpoints are held in a weak array, so they may disappear (method recompiled, method removed) without any watchpoint uninstall event. Also, they may still be among watchpoints even after an uninstall, because they are still in the weak array.