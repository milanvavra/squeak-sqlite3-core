public
nextKeysAndValuesDo: aBlock
	self atEnd ifTrue: [self error: 'Trying to read past end of results'].
	columnNames do:
		[:ea |
		aBlock value: ea value: self nextString]