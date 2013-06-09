as yet unclassified
defaultSpec
	<spec>
	
	^ SpecLayout text
			send: #on:text:accept:readSelection:menu: withArguments: #(model getText accept:notifying: readSelection getMenu:);
			send: #classOrMetaClass: withArguments: {#(model behavior)};
			send: #enabled: withArguments: {#(model enabled)};
			send: #vSpaceFill;
			send: #hSpaceFill;
			yourself