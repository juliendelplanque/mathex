I am a mathex annotation that allows you to use Mathex from Pillar.

Here are some example:
"You can use short Mathex:"
${mathex:value=(($a power: 2)+($b power: 2)) sqrt}$

"Or write Mathex using regular Smalltalk:"
${mathex:value=(($a asMathex power: 2 asMathex)+($b asMathex power: 2 asMathex)) sqrt|short=false}$