public
executeQuery: aString
	^ self withResultForQuery: aString do:
		[:result |
		Array streamContents:
			[:s |
			result do: [:row | s nextPut: row]]]