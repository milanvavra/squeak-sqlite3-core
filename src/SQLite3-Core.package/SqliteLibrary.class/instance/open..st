accessing
open: aString
	|err ref|
	ref := SqliteReference new.
	err := self apiOpen: aString sqlite: ref.
	self checkErrorInteger: err.
	^ ref