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
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ].
		spec baseline: 'Mathex' with: [
    		spec repository: 'github://juliendelplanque/mathex/repository' ].
		spec baseline: 'MathexAMS' with: [
    		spec repository: 'github://juliendelplanque/mathex/repository' ].
		spec baseline: 'CommandAvailability' with: [ 
			spec repository: 'github://juliendelplanque/commandavailability/repository' ].
		spec package: #'Mathex-Compiler' ].