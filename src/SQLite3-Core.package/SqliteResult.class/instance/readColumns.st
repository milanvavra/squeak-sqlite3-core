reading
readColumns
	columnNames := OrderedCollection new.
	columns timesRepeat: [columnNames add: self nextString]