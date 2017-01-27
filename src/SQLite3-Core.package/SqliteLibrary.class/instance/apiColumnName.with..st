api
apiColumnName: hStmt with: iCol
	"char* sqlite3_column_name(sqlite3_stmt*, int iCol);"
	<cdecl: char* 'sqlite3_column_name' (ulong long)>
	^self externalCallFailed