private
isOpen
	^ reference notNil and: [reference getHandle anySatisfy: [:i | i > 0]]