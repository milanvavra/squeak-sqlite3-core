private
transact
	txn := true.
	self execute: 'BEGIN TRANSACTION' args: {}.
