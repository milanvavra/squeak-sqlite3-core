accessing
registry
	^ registry ifNil: [registry := WeakRegistry new]