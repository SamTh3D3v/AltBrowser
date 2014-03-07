AltBrowser
==========

AltBrowser: a tree-based system browser for Pharo with smart suggestions, refactoring integration including environment filtering, and git integration. With a minimalistic GUI so as to be able to put more of them on a screen, and a single GUI to have less to learn to use.

It integrates: the finder, message browser and, of course, the system browser. It is intended for real world use (i.e. stable and complete enough for development tasks on both Pharo2 and Pharo3) and GUI experiments. Is fairly small (4000 lines of code) for a system browser (compared to over 10000 lines for Nautilus, and 3000 lines for the old browser in Pharo). Read [here](http://thierrygoubier.github.io/AltBrowser/) for more.

[AltBrowser screenshot](https://github.com/ThierryGoubier/AltBrowser/blob/master/Documentation/Screenshot.png)

In all supported Pharo versions (2 and 3), AltBrowser can be loaded that way:

```smalltalk
Gofer new
	url: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main';
	configurationOf: 'AltBrowser';
	loadDevelopment.
```

Requires a Mac or Linux system with git correctly installed.

and the stable version for Pharo 3.0 with:

```smalltalk
Gofer new
	url: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main';
	configurationOf: 'AltBrowser';
	loadStable.
```
