api
apiFinalize: pStmt
	"int sqlite3_finalize(sqlite3_stmt *pStmt);"
	<cdecl: long 'sqlite3_finalize' (ulong)>
	^self externalCallFailed