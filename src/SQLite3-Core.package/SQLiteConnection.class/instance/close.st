private
close
	self unregister.
	self isOpen ifTrue: [SqliteLibrary default close: reference].
	reference := nil.
