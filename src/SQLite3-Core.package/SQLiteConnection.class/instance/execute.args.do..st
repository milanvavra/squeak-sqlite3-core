prepared statements
execute: query args: args do: aBlock

	self isOpen ifFalse: [self open].
	SqliteLibrary default execute: query args: args on: reference do: aBlock.
