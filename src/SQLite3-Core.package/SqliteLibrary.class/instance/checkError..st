accessing
checkError: anError
	|message|
	(anError getHandle allSatisfy: [:i | i = 0]) ifTrue: [^ self].
	message := anError value fromCString.
	anError free.
	self error: message	