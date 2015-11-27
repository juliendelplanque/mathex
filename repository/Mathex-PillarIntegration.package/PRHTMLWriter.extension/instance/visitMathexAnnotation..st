*Mathex-PillarIntegration
visitMathexAnnotation: aMathexAnnotation
	"The html template must be linked to MathJax (https://www.mathjax.org/)."
	canvas raw: aMathexAnnotation compileMathex contents