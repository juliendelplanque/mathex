baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec package: 'ConfigurationOfPillar' with: [
    		spec
				repository: 'http://smalltalkhub.com/mc/Pier/Pillar/main';
				postLoadDoIt: #installLatexExporter ].
		spec baseline: 'MathexGTInspector' with: [
    		spec repository: 'github://juliendelplanque/mathex/repository' ].
		spec package: #'Mathex' ].