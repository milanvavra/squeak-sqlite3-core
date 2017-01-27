api
apiErrorMessage: anSqlite
	"const char *sqlite3_errmsg(sqlite3*)"
	<cdecl: SqliteError 'sqlite3_errmsg' (SqliteReference)>
	^ self externalCallFailed 