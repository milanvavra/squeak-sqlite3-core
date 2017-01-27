accessing
bindArg: arg at: index in: stmt

	arg == true ifTrue:[^self apiBindInt: stmt with: index with: 1].
	arg == false ifTrue:[^self apiBindInt: stmt with: index with: 0].
	arg ==  nil ifTrue:[^self apiBindNull: stmt with: index].

	arg isInteger ifTrue:[^self apiBindInt: stmt with: index with: arg].
	arg isFloat ifTrue:[^self apiBindDouble: stmt with: index with: arg].
	arg isString ifTrue:[^self apiBindText: stmt with: index with: arg with: arg size with: -1].
	(arg isKindOf: DateAndTime) ifTrue:[ | string |
		string := String streamContents:[:s|
			arg printYMDOn: s withLeadingSpace: false.
			s nextPut: $T.
			arg printHMSOn: s.
		].
		^self bindArg: string at: index in: stmt
	].
	self error: 'Cannot bind argument'