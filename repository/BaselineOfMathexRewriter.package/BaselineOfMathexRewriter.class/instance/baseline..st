baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec baseline: 'Mathex' with: [
    		spec repository: 'github://juliendelplanque/mathex/repository' ].
		spec package: #'Mathex-Rewriter' ].