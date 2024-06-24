# Extern
Externs allow you to call functions that aren't defined in the Callisto code

There are different types of extern for different uses

## Callisto externs
Syntax:

```
extern FUNCTION_NAME
```

Currently useless

## Raw externs
Syntax:

```
extern raw FUNCTION_NAME
```

Allows you to call a symbol, such as a C function

Example:

```
extern raw time

time
```

If you link libc, then this will call the `time` function. This type of extern shouldn't
be used for C interoperability, see below.

## C externs
Syntax:

```
extern C RETURN_TYPE FUNCTION_NAME TYPE ... end
```

`RETURN_TYPE` is the return type of the C function, which can be `void` or a callisto
type

`TYPE` can be a list of callisto types, like this:

```
extern C i32 add i32 i32 end
```

C externs will automatically handle the ABI when you call them, so you can call C
functions the same way you would call callisto functions
