accessing
resultForQuery: aString on: sqliteRef
	|nrows ncols buffer err|
	nrows := WordArray new: 1.
	ncols := WordArray new: 1.
	err := SqliteError new.
	buffer := SqliteResultBuffer new.
	self apiGetTable: sqliteRef sql: aString buffer: buffer rows: nrows columns: ncols error: err.
	self checkError: err.
	^ SqliteResult buffer: buffer rows: nrows first columns: ncols first