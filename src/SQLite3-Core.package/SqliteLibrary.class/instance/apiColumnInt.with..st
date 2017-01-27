api
apiColumnInt: hStmt with: iCol
	"int sqlite3_column_int(sqlite3_stmt*, int iCol);"
	<cdecl: long 'sqlite3_column_int' (ulong long)>
	^self externalCallFailed