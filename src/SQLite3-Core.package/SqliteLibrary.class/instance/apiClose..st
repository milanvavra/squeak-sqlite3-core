api
apiClose: sqlite
	"int sqlite3_close(sqlite3*)"
	<cdecl: long 'sqlite3_close' (SqliteReference)>
	^ self externalCallFailed 