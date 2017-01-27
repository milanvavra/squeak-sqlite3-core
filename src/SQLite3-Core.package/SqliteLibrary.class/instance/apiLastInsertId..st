api
apiLastInsertId: sqlite
	"long long int sqlite3_last_insert_rowid(sqlite3*)"
	<cdecl: longlong 'sqlite3_last_insert_rowid' (SqliteReference)>
	^ self externalCallFailed 