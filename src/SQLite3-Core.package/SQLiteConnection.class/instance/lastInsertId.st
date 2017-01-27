public
lastInsertId
	^ self isOpen
		ifTrue: [SqliteLibrary default lastInsertId: reference]
		ifFalse: [0]
	