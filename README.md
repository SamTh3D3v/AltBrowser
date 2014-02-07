AltBrowser
==========

A system browser for Pharo 2.0 and 3.0, simple and efficient. Provides a complete tree view on a Pharo system and the essential set of methods for fast and effective coding with a minimum learning curve. Is both keyboard-oriented and visual-oriented.

Is fairly small (4000 lignes of code).

![AltBrowser screenshot](https://github.com/ThierryGoubier/AltBrowser/blob/master/Documentation/Screenshot.png)

In all supported Pharo versions (2 and 3), the development version can be loaded that way:

```smalltalk
Gofer new
	url: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main';
	configurationOf: 'AltBrowser';
	loadDevelopment.
```
