AltBrowser
==========

AltBrowser: a tree-based system browser for [Pharo](http://pharo.org) with smart suggestions, refactoring integration including environment filtering, and git integration. With a minimalistic GUI so as to be able to put more of them on a screen, and a single GUI to have less to learn to use.

It integrates: the finder, message browser and, of course, the system browser. It is intended for real world use (i.e. stable and complete enough for development tasks on [Pharo](http://pharo.org)) and GUI experiments. Is fairly small (4000 lines of code) for a system browser (compared to over 10000 lines for Nautilus, and 3000 lines for the old browser in Pharo). Now includes a few experiments such as: using Metacello to handle packages projects, and a fast, size-unlimited inspector with self-update and integration of GT views.

A more detailed report / user manual of a kind is available [here](http://thierrygoubier.github.io/AltBrowser/).

![AltBrowser screenshot](https://github.com/ThierryGoubier/AltBrowser/blob/master/Documentation/Screenshot.png)

In Pharo versions 2 and 3, AltBrowser can be loaded that way:

```smalltalk
Gofer new
	url: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main';
	configurationOf: 'AltBrowser';
	loadStable.
```
In Pharo 5 and 6, AltBrowser should be loaded that way:

```smalltalk
Metacello new
	baseline: 'AltBrowser';
	repository: 'github://ThierryGoubier/AltBrowser:pharo', SystemVersion current major printString;
	load.
```

There is no development / stable version difference; all versions are usable (as in used everyday or so to develop professional software on Pharo at the exclusion of any other IDE), but new features tend to appear on the latest Pharo version.
