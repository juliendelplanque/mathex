baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec package: 'ConfigurationOfPillar' with: [
    		spec
				repository: 'http://smalltalkhub.com/mc/Pier/Pillar/main';
				postLoadDo: #installLatexExporter ].
		spec package: #'Mathex' ].