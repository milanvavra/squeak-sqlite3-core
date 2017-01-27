api
apiColumnCount: hStmt
	"int sqlite3_column_count(sqlite3_stmt*);"
	<cdecl: long 'sqlite3_column_count' (ulong)>
	^self externalCallFailed