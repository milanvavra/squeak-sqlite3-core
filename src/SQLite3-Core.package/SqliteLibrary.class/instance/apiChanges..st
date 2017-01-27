api
apiChanges: sqlite
	"int sqlite_changes(sqlite*)"
	<cdecl: long 'sqlite3_changes' (SqliteReference)>
	^ self externalCallFailed 