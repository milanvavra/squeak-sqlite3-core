api
apiBindParameterCount: pStmt
	"int sqlite3_bind_parameter_count(sqlite3_stmt*)"
	<cdecl: long 'sqlite3_bind_parameter_count' (ulong)>
	^ self externalCallFailed 