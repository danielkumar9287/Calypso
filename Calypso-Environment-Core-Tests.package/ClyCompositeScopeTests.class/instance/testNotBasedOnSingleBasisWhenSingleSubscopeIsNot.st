tests
testNotBasedOnSingleBasisWhenSingleSubscopeIsNot
	| subscope |
	subscope := ClyScopeExample of: #(basisObject1 basisObject2).
	scope := ClyCompositeScope on: {subscope}.
	
	self deny: scope isBasedOnSingleBasis