public
transaction: aBlock
	"Wrap the given block inside a transaction"
	| result |
	self execute: 'BEGIN TRANSACTION' args: {}.
	[result := aBlock value.
	self execute:'END TRANSACTION' args: {}.
	] ifCurtailed:[self execute:'ROLLBACK TRANSACTION' args: {}].
	^result