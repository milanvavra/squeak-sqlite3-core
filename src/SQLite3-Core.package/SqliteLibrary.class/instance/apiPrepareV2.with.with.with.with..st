api
apiPrepareV2: db with: zSql with: nByte with: ppStmt with: pzTail
	"int sqlite3_prepare_v2(
	  sqlite3 *db,            /* Database handle */
	  const char *zSql,       /* SQL statement, UTF-8 encoded */
	  int nByte,              /* Maximum length of zSql in bytes. */
	  sqlite3_stmt **ppStmt,  /* OUT: Statement handle */
	  const char **pzTail     /* OUT: Pointer to unused portion of zSql */
	);"
	<cdecl: long 'sqlite3_prepare_v2' (SqliteReference char* long ulong* ulong*)>
	^ self externalCallFailed 