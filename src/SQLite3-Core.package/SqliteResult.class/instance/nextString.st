accessing
nextString
	|str|
	buffer ifNil: [self error: 'Result has been freed'].
	str := self readString.
	index := index + 1.
	^ str