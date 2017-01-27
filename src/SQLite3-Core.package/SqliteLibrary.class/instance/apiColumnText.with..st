api
apiColumnText: hStmt with: iCol
	"char* sqlite3_column_int(sqlite3_stmt*, int iCol);"
	<cdecl: char* 'sqlite3_column_text' (ulong long)>
	^self externalCallFailed