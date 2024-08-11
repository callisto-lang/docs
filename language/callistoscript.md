# CallistoScript
CallistoScript is a subset of Callisto that is made to compile to scripting languages.
It manages to keep many of it's low-level features, because it still has memory - 1
mebibyte of it. It has 4 stacks, listed below with the addresses they start at:

- Data stack, starts at `1` and grows upwards
- Variable stack, starts at `1048576` and grows downwards
- Global stack (compile-time), starts at `524288` and grows upwards
- Array stack (compile-time), starts at `524287` and grows downwards

Some features can't be used with CallistoScript, which are these:
- The `call` word
- Function pointers

## How to use
Compile with one of these backends to use CallistoScript:
- `lua`
