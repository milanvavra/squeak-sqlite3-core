api
apiBindNull: stmt with: index
	"int sqlite3_bind_null(sqlite3_stmt*, int);"
	<cdecl: long 'sqlite3_bind_null' (ulong long)>
	^self externalCallFailed