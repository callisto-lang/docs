# Variables
Variables in Callisto can have any of these types:

- `u8` (unsigned 8-bit)
- `i8` (signed 8-bit)
- `u16` (unsigned 16-bit)
- `i16` (signed 16-bit)
- `u32` (unsigned 32-bit)
- `i32` (signed 32-bit)
- `u64` (unsigned 64-bit)
- `i64` (signed 64-bit)
- `isize` (biggest signed value on current core)
- `usize` (biggest unsigned value on current core)
- `cell` (size of cells on the stack, unsigned)
- `icell` (size of cells on the stack, signed)
- `bool` (cell-sized, unsigned)
- `Array` (see array doc)

It can also be a type that you have defined

## Let statements
Let statements use this syntax:
```
let TYPE NAME
```

If the TYPE is the same size as a cell, then it is zero initialised (unless it's global,
where it is always zero initialised)

Let statements can also declare arrays, with this syntax:
```
let array SIZE TYPE NAME
```

This won't create an Array structure, just a variable that is TYPE*SIZE bytes big

### Reading variables
To read a variable, you just type the name of the variable. This only works for variables
with an integer type

Example:

```
let cell foo
foo print_dec
```

### Writing variables
To write to a variable, you can use `->`. `->` is a unary operator that pops a cell
from the stack and writes it to a variable. If needed, the variable will be truncated.
The syntax looks like this:

```
-> VARIABLE_NAME
```

Example:

```
let cell foo
10 -> foo
foo print_dec
```

## Const statements
Const statements use this syntax
```
const NAME VALUE
```

Constants have no type, as they just work like macros. When you type the name of one,
it will just replace it with the value of the const.

## Anon statements
`anon` statements are like `let` but without a variable name. They are anonymous variables.

This is the syntax:

```
anon TYPE

# or for arrays
anon array SIZE TYPE
```

This is useful for allocating space for creating `Arrays`, like this:

```
let Array arr
10 cell.sizeOf anon array 10 cell &arr create_array
```

If you used `let` instead of `anon`, it would look like this:

```
let Array arr
let array 10 cell arrayContents
10 cell.sizeOf &arrayContents &arr create_array
```
