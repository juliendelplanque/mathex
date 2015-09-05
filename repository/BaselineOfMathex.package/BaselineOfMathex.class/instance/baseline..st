baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec configuration: 'Pillar-ExporterLaTeX' with: [
    		spec repository: 'http://smalltalkhub.com/mc/Pier/Pillar/main' ].
		spec package: #'Mathex' ].