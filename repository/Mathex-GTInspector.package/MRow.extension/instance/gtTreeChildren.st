*Mathex-GTInspector
gtTreeChildren
	^(self collection ifNil: [ ^OrderedCollection new ])
		collect: [ :each | each asMathex ]