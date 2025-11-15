# Modules
Module files are like object files containing metadata describing types, variables,
and functions.

It is recommended that [calbuild](/tools/calbuild.md) is used for projects using
modules.

## `module main`
Since there is no main function in Callisto, it is required that the `module main`
statement is used in one source file to say "this is the entry point".

## `import`
Import uses this syntax:

```
import MODULE_NAME
```

This statement will import the module, and also execute any top level code contained
in it.

## Example
```
module main

import std.io

"Hello, world!" print_str new_line
```
