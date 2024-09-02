# Exceptions

## The Exception structure
```
struct Exception
	bool  error
	Array msg
end
```

The global exception value (named `_cal_exception`) uses this structure. If `error` is
non-zero, then an exception has been thrown. `msg` contains the exception message.

## `error` attribute
Functions need the `error` attribute to be able to throw. To add this attribute, write
`error` after `func`. Functions with the `error` attribute also won't crash if an
exception happens inside the function, instead it throws it to the caller.

## `throw`
To throw an exception, use `throw`. It takes an `Array*` parameter which is the exception
message.

### Example
```
func error foo begin
	"This is an exception" throw
end
```

## Try/catch
You can use a try/catch statement to catch exceptions. It has this syntax:

```
try FUNCTION
catch
	...
end
```

This statement calls `FUNCTION`, and if it throws then it runs the catch block.
