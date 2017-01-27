accessing
close: anSqliteRef
	| err |
	err := self apiClose: anSqliteRef.
	self checkErrorInteger: err.