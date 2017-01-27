accessing
doesNotUnderstand: aMessage
	"Allow read access with common selector names"
	^self at: aMessage selector ifAbsent:[super doesNotUnderstand: aMessage].