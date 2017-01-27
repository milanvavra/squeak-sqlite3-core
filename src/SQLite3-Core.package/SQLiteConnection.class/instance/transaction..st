public
transaction: aBlock
	"Wrap the given block inside a transaction"
	| result |
	txn ifNotNil:[^aBlock value].
	[self transact.
	result := aBlock value.
	self commit.
	] ifCurtailed:[self rollback].
	^result