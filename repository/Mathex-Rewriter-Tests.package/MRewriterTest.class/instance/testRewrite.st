tests
testRewrite
	self assert: (rewriter rewrite: '((($e equal: $m) cdot: $c) power: 2) math') equals: '((($e asMathex equal: $m asMathex) cdot: $c asMathex) power: 2 asMathex) math'.
	self assert: (rewriter rewrite: 'MGreekLetter Gamma equal: 42') equals: 'MGreekLetter Gamma equal: 42 asMathex'.
	self assert: (rewriter rewrite: '''hello boys'' textrm math') equals: '''hello boys'' asMathex textrm math'