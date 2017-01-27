accessing
execute: query args: args on: sqliteRef do: aBlock
	"Execute the given query, binding the arguments as needed"

	| ppStmt hStmt code colCount result value err names rval |
	ppStmt := WordArray new: 1.
	(err := self apiPrepareV2: sqliteRef with: query with: query size with: ppStmt with: nil) == 0
		ifFalse:[self error: 'sqlite_prepare_v2 failed: ', err printString].
	hStmt := ppStmt at: 1.
	(self apiBindParameterCount: hStmt) = args size 
		ifFalse:[self error:'Argument count mismatch'].
	1 to: args size do:[:idx|
		self bindArg: (args at: idx) at: idx in: hStmt.
	].
	colCount := nil.
	[code := self apiStep: hStmt.
	code = 100] whileTrue:[
		colCount ifNil:[
			colCount := self apiColumnCount: hStmt.
			result := Array new: colCount.
			names := Array new: colCount.
			1 to: colCount do:[:i|
				names at: i put: (self apiColumnName: hStmt with: i-1) asSymbol.
			].
		].
		1 to: colCount do:[:i| | colIdx |
			colIdx := i-1.
			(self apiColumnType: hStmt with: colIdx) caseOf: {
				[1] -> [value := self apiColumnInt: hStmt with: colIdx].
				[2] -> [value := self apiColumnDouble: hStmt with: colIdx].
				[3] -> [value := self apiColumnText: hStmt with: colIdx].
				[4] -> [self error: 'Blobs are not supported'].
				[5] -> [value := nil].
			}.
			result at: i put: value.
		].
		rval := aBlock numArgs = result size 
			ifTrue:[aBlock valueWithArguments: result]
			ifFalse:[aBlock value: (SQLiteRecord names: names values: result)].
	].
	self apiFinalize: hStmt.
	code = 101 ifFalse:[self error: 'Error code: ', code printString].
	^rval