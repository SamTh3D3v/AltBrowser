AltBrowser
==========

A system browser for Pharo 2.0, simple and efficient. Provides a complete tree view on a Pharo system and the essential set of methods for fast and effective coding with a minimum learning curve. Is both keyboard-oriented and visual-oriented.

![AltBrowser screenshot](https://github.com/ThierryGoubier/AltBrowser/blob/master/Documentation/Screenshot.png)

How to load the stable version (on Linux) :

	mkdir pharo
	cd pharo
	wget -O- get.pharo.org/20+vm | bash
	./pharo Pharo.image config http://smalltalkhub.com/mc/ThierryGoubier/AltBrowser/main/ ConfigurationOfAltBrowser --install=stable
	
How to load the latest development version (on Linux) :
	
	git clone git://github.com/ThierryGoubier/AltBrowser.git
	mkdir pharo
	cd pharo
	wget -O- get.pharo.org/20+vm | bash
	./pharo Pharo.image config http://ss3.gemstone.com/ss/MetaRepoForPharo20 ConfigurationOfOSProcess --install=stable
	./pharo Pharo.image config http://ss3.gemstone.com/ss/FileTree ConfigurationOfFileTree --install=stable
	./pharo Pharo.image eval --save Gofer new url: \'http://smalltalkhub.com/mc/ThierryGoubier/MonticelloFileTree-Git/main\'\; package: \'MonticelloFileTree-Git\'\; load
	./pharo Pharo.image eval --save Gofer new url: \'gitfiletree://`pwd`/../AltBrowser/\'\; package: \'Alt-Browser\'\; load
	
