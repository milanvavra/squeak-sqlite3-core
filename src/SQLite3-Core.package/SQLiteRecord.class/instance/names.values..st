initialize
names: names values: values
	names with: values do:[:n :v| self at: n put: v].
