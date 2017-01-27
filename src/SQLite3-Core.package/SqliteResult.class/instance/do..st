public
do: aBlock
	self reset.
	rows timesRepeat: [aBlock value: self nextRow].
	