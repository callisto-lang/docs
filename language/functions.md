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
func NAME begin

end
```

Where NAME is the name of the function

Note: `begin` is there in case I want to add parameters to definitions in the future

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

## Raw functions
Usually in Callisto, functions get compiled with a certain prefix (`__func__` or `func__`),
you can disable this by adding `raw` after the `func`/`inline` keyword, like this:

```
func raw foo begin

end
```
