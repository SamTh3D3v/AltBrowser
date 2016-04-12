I use a normal change / refresh mode and I do not defer those to the #drawOn:.

I'm slower on startup / open than my ancestor, but I display faster (a bit, not by much). I do update myself a lot more when opening (and on other operations, such as opening a path in the tree) because I do an update on every changed request instead of only once displayed.

On 'Object browse', this has a 50 ms execution cost.