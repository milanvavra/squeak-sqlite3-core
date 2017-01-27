private
rollback
	txn := false.
	self execute: 'ROLLBACK' args: {}.
