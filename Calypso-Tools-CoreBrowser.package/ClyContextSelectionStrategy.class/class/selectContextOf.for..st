query
selectContextOf: aSelection for: aBrowser

	self activeInstancesInContext: aBrowser do: [ :strategy | 
		(strategy shouldBeAppliedFor: aSelection itemScope) ifTrue: [ 
			^strategy createBrowserContextOf: aSelection for: aBrowser]].
	
	^ClyUnknownBrowserContext for: aBrowser