# Mathex
A framework to generate latex math code from Pharo.

## Install me
Execute the following code snippet in your image:

~~~
Metacello new
    baseline: 'Mathex';
    repository: 'github://juliendelplanque/mathex/repository';
    load.
~~~

## What can you do with mathex?
This framework allow you to generate valid math in LaTeX.
Print the following code snippets to see the LaTeX results.

### Write your formula using Pharo objects:
~~~
$x asMathex.
42 asMathex.
(5 / 2) asMathex.
2 asMathex sqrt.
($e asMathex equal: $m) ,, $c power: 2. "#,, is used to concatenate."
~~~

### Use greek letters:
~~~
MGreekLetter Gamma equal: 42.
~~~
Greek letters are also defined as globals:

~~~
Gamma equal: 42.
~~~

### Use the array environement:
~~~
mArray := MArray new.
mArray
    parameter: '|c|c|c|';
    addLine;
    addRow: #(1 2 3);
    addRow: #(4 5 6);
    addRow: #(7 8 9);
    addLine.
    mArray.
~~~

### Export your result stored into a matrix:
~~~
matrixOfResults := Matrix diagonal: #(42 42 42).
$x asMathex equal: matrixOfResults.
~~~

### Export your stuff directly in a math environment.
~~~
((42 asMathex equal: 40) + 2) math.
((42 asMathex equal: 40) + 2) equation.
((42 asMathex equal: 40) + 2) displayMath.
~~~

And even more...
