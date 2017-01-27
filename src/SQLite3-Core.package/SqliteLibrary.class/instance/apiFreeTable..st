api
apiFreeTable: buffer
	"void sqlite3_free_table(char **result)"
	<cdecl: void 'sqlite3_free_table' (SqliteResultBuffer)>
	^ self externalCallFailed