accessing
checkErrorInteger: anError
	|message|
	(anError = 0) ifTrue: [^self].
	"Get the errmsg"

	message := 'Result Code: ', anError asString.
	self error: message