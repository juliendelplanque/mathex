baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec 
			project: 'OSProcess' with: [
				spec
					className: #ConfigurationOfOSProcess;
					versionString: #stable;
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main/' ].
		spec baseline: 'Mathex' with: [
    		spec repository: 'github://juliendelplanque/mathex/repository' ].
		spec package: #'Mathex-Compiler' ].