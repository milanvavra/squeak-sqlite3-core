prepared statements
execute: query args: args
	^Array streamContents:[:s|
		self execute: query args: args do:[:result| s nextPut: result].
	].