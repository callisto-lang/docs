# Arrays

## The Array structure
The Array structure is like a slice, and is defined like this:
```
struct Array
    usize length
    usize memberSize
    addr  elements
end
```

You can use functions from the `array` part of the standard library to use these structures

## Array literals
Array literals have syntax like this:
```
[TYPE ELEMENTS]
```

For example: `[cell 1 2 3 4 5]`

Currently, array literals only support numerical values

An array literal will push an `Array` structure to the stack

If you want the literal to be global (which is faster), then you can add a 'c' before
the '['

## String literals
Strings work the same way as arrays, and even use the same structure

String literals just look like this: `"hello world"`

If you want the literal to be global (which is faster), then you can add a `c` before
the first "

Like array literals, this pushes an Array structure to the stack
