#A makefile for building pharo as per use.

pharo/Pharo.image:
	mkdir pharo
	cd pharo; wget -O- get.pharo.org/20 | bash
	pharo -headless pharo/Pharo.image eval --save Gofer new url:\'http://ss3.gemstone.com/ss/PharoInbox\'\; package: \'SLICE-Issue-11102-FileSystemError-Path--root\'\; package: \'SLICE-Issue-11535-RBBrowserEnvironment-packages-method-is-too-broad\'\; package: \'SLICE-Issue-11217-backport-20-No-timestamp-in-MCMethodDefinition\'\; load. \(MCWorkingCopy allManagers select: [ :e \| e packageName beginsWith: \'SLICE\' ]\) do: [ :e \| e unregister ]
	pharo -headless pharo/Pharo.image config http://ss3.gemstone.com/ss/MetaRepoForPharo20 ConfigurationOfOSProcess --install=stable
	pharo -headless pharo/Pharo.image config http://ss3.gemstone.com/ss/FileTree ConfigurationOfFileTree --install=stable
	pharo -headless pharo/Pharo.image eval --save Gofer new url:\'http://smalltalkhub.com/mc/ThierryGoubier/MonticelloFileTree-Git/main\'\; package: \'MonticelloFileTree-Git\'\; load
	pharo -headless pharo/Pharo.image eval --save Gofer new url: \'gitfiletree://`pwd`/AltBrowser/\'\; package: \'Alt-Browser\'\; load

all: pharo/Pharo.image

run: pharo/Pharo.image
	pharo pharo/Pharo.image

clean:
	rm -rf pharo/
