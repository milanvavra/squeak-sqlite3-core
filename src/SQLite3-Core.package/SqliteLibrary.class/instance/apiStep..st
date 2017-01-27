api
apiStep: hStmt
	"int sqlite3_step(sqlite3_stmt*);"
	<cdecl: long 'sqlite3_step' (ulong)>
	^self externalCallFailed