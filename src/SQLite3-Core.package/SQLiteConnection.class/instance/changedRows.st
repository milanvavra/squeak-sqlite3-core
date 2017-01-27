public
changedRows
	^ self isOpen
		ifTrue: [SqliteLibrary default changedRows: reference]
		ifFalse: [0]
	