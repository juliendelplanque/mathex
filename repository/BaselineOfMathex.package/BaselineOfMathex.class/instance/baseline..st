baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec configuration: 'Pillar' with: [
    		spec
				repository: 'http://smalltalkhub.com/mc/Pier/Pillar/main';
				package: 'Pillar-ExporterLaTeX' ].
		spec package: #'Mathex' ].