as yet unclassified
defaultSpec
	<spec>
	
	^ SpecLayout text
			send: #on:text:accept:readSelection:menu: withArguments: #(model getText accept:notifying: readSelection getMenu:);
			send: #classOrMetaClass: withArguments: {#(model behavior)};
			send: #enabled: withArguments: {#(model enabled)};
			send: #eventHandler: withArguments: {#(EventHandler on:send:to: keyStroke keyStroke:fromMorph: model)};
			send: #vSpaceFill;
			send: #hSpaceFill;
			yourself