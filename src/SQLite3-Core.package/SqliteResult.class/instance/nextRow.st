public
nextRow
	|row|
	row := Dictionary new.
	self nextKeysAndValuesDo: [:k :v | row at: k put: v].
	^ row