# Functions

## Function calling
Function calling is simple, all you have to do is write the function name and it will
get called

Example
```
func sayHi begin
	"hi" printlstr new_line
end

sayHi
```

Parameters are passed to functions through the stack (which you push to by just writing
an integer, or variable identifier, or const identifier)

Example
```
2 2 +
```

## Function definitions
Function definitions use this syntax:

```
func NAME PARAM_TYPE PARAM_NAME ... -> RETURN_TYPE RETURN_VALUE ... begin

end
```

Where NAME is the name of the function

There can be as many parameters and return values as you want. Return values are only
for the stack checker.

Example:

```
func say_num cell num begin
	num printdec new_line
end

func sum cell a cell b cell c -> cell sum begin
	a b + c + # note: very slow, don't code like this
end
```

If you want to handle parameters manually, so they get left on the stack, add `man` after
`func`/`inline`.

If your function has unsafe code (assembly blocks and `call`), add `unsafe` after `func`/`inline`.
This will make the stack checker skip checking the function definition.

If you want the function to be inlined, you can replace the `func` keyword with `inline`.
This also makes the function act like a macro, so words like `return` will return from
whatever function the caller is in

## Returning from functions
Callisto has a built in word called `return`, which will return from the function

## Function pointers
You can get the address of a Callisto function using the only unary operator: `&`. It
works like this:

```
func foo begin

end

&foo printdec
```

You can call function pointers that are on the stack with `call`, like this:

```
50 &printdec call
```

Note: `call` can only be used in unsafe code

## Raw functions
Usually in Callisto, functions get compiled with a certain prefix (`__func__` or `func__`),
you can disable this by adding `raw` after the `func`/`inline` keyword, like this:

```
func raw foo begin

end
```
