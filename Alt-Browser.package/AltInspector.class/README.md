An alternative to the eye tree inspector. Try to make it fast!

Ok, to recover the GTInspector presentations:
- run the <gtInspectorPresentationOrder: > pragmas methods over a
       GLMCompositePresentation instance.
       see ProtoObject>>#gtInspectorPresentationIn:inContext:
       and ProtoObject>>#gtInspectorPresentationsFromPragmas:in:inContext:
- recover the presentations of the GLMCompositePresentation instance
- use matchingPresentations to restrict which ones to show.
- get the entry from the title (get rid of the Raw and Meta presentations)
- ask for the morph of each presentation
Don't process the pragmas requiring a GTInspector instance as a context.