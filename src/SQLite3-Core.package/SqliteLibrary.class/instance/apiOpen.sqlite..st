api
apiOpen: dbName sqlite: sqlite
	"int sqlite3_open(const char*, sqlite3**);"
	<cdecl: long 'sqlite3_open' (char* SqliteReference*)>
	^ self externalCallFailed