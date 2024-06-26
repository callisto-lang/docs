# Variables
Variables in Callisto can have any of these types:

- u8 (unsigned 8-bit)
- i8 (signed 8-bit)
- u16 (unsigned 16-bit)
- i16 (signed 16-bit)
- u32 (unsigned 32-bit)
- i32 (signed 32-bit)
- u64 (unsigned 64-bit)
- i64 (signed 64-bit)
- size (biggest signed value on current core)
- usize (biggest unsigned value on current core)
- cell (size of cells on the stack)
- Array (see array doc)

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

After creating a variable, you can put it's address on the stack at any time by
just typing the identifier, for example:

```
let cell myCell
65 myCell !
```

## Const statements
Const statements use this syntax
```
const NAME VALUE
```

Constants have no type, as they just work like macros. When you type the name of one,
it will just replace it with the value of the const.
