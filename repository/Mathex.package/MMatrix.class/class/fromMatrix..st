instance creation
fromMatrix: aMatrix
	| new |
	new := self new.
	(1 to: aMatrix rowCount) do: [ :i |
		new
			addRow: ((aMatrix atRows: i to: i columns: 1 to: aMatrix columnCount) asArray
							collect: [ :x | x asMathex ]) ].
	^ new