public
withResultForQuery: aString do: aBlock
	|result|
	self isOpen ifFalse: [self open].
	result := SqliteLibrary default resultForQuery: aString on: reference.
	^ [aBlock value: result] ensure: [result free]