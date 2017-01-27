api
apiBindText: stmt with: index with: value with: length with: destructor
	"int sqlite3_bind_text(sqlite3_stmt*, int, const char*, int n, void(*)(void*));"
	<cdecl: long 'sqlite3_bind_text' (ulong long char* long long)>
	^self externalCallFailed