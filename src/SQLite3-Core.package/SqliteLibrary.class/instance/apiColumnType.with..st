api
apiColumnType: hStmt with: iCol
	"int sqlite3_column_type(sqlite3_stmt*, int iCol);"
	<cdecl: long 'sqlite3_column_type' (ulong long)>
	^self externalCallFailed