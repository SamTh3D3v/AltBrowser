The abstract node announcement.

Beware, unexpected behavior! Announcement matching for actions matches also subclasses (what a strange idea?).

Buggy previous code: AltNodeRemoved has AltNodeAdded as superclass; on AltNodeRemoved both AltNodeAdded and AltNodeRemoved would match and trigger actions.
