api
apiBindDouble: stmt with: index with: double
	"int sqlite3_bind_double(sqlite3_stmt*, int, double);"
	<cdecl: long 'sqlite3_bind_double' (ulong long double)>
	^self externalCallFailed