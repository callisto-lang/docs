# The Core library
The core library contains definitions for the functions required to write the standard
library without any platform dependant code

Some functions require a certain feature that only some cores have, which is documented
for each core and the required features are listed here in the docs

## printch
Parameters: cell char

Requires: IO

Prints char to stdout as ASCII

## exit
Parameters: cell code

Requires: Exit

## =
Parameters: cell v1, cell v2

Returns max cell value if the 2 values are equal, and 0 if not

## >
Parameters: cell v1, cell v2

Returns max cell value if v1 is greater than v2, 0 if not

## >=
Parameters: cell v1, cell v2

Returns max cell value if v1 is greater than or equal to v2, 0 if not

## <
Parameters: cell v1, cell v2

Returns max cell value if v1 is less than v2, 0 if not

## <=
Parameters: cell v1, cell v2

Returns max cell value if v1 is lesser than or equal to v2, 0 if not

## @
Parameters: addr address

Returns the cell-sized value at address

## !
Parameters: cell value, addr address

Writes value to address

## b@
Parameters: addr address

Returns the 1 byte value (as a cell) at address

## b!
Parameters: cell value, addr address

Writes value as a byte to address

## w@
Parameters: addr address

Returns the 2 byte value (as a cell) at address

Requires at least 16-bit cell size

## w!
Parameters: cell value, addr address

Writes the 2 byte value to address

Requires at least 16-bit cell size

## d@
Parameters: addr address

Returns the 4 byte value (as a cell) at address

Requires at least 32-bit cell size

## d!
Parameters: cell value, addr address

Writes the 4 byte value to address

Requires at least 32-bit cell size

## dup
Duplicates the top value on the stack

## drop
Pops a value from the stack

## swap
Swaps the 2 top values on the stack

## +
Parameters: cell v1, cell v2

Returns v1 + v2 (unsigned)

## s+
Parameters: cell v1, cell v2

Returns v1 + v2 (signed)

## -
Parameters: cell v1, cell v2

Returns v1 - v2 (unsigned)

## s-
Parameters: cell v1, cell v2

Returns v1 - v2 (signed)

## *
Parameters: cell v1, cell v2

Returns v1 * v2 (unsigned)

## s*
Parameters: cell v1, cell v2

Returns v1 * v2 (signed)

## /
Parameters: cell v1, cell v2

Returns v1 / v2 (unsigned)

## s/
Parameters: cell v1, cell v2

Returns v1 / v2 (signed)

## %
Parameters: cell v1, cell v2

Returns v1 % v2 (unsigned)

## s%
Parameters: cell v1, cell v2

Returns v1 % v2 (signed)

## and
Parameters: cell v1, cell v2

Does bitwise and on v1 and v2 and returns the result

## or
Parameters: cell v1, cell v2

Does bitwise or on v1 and v2 and returns the result

## xor
Parameters: cell v1, cell v2

Does bitwise xor on v1 and v2 and returns the result

## not
Parameters: cell value

Does bitwise not on value and returns the result

## <<
Parameters: cell v1, cell v2

Shifts v1 left by v2 bits and returns the result

## >>
Parameters: cell v1, cell v2

Shifts v1 right by v2 bits and returns the result

## get_epoch_time
Requires: Time

Returns the current time since epoch (1st January 1970)

## struct File
Requires: File

A structure containing info for open files

## open_file
Parameters: Array* path, cell mode

Requires: File

mode is a value with one or more of these options OR'd together:
- FILE_READ (1)
- FILE_WRITE (2)

This function opens a file and pushes the contents of the File structure to the stack,
which you can then store in a variable with `file<`

## file<
Parameters: File* file, File* variable

Requires: File

Copies a file structure from `file` to `variable`

## file@
Parameters: File* file, addr buffer, cell count

Requires: File

Reads `count` bytes from the given file and writes them to `buffer`

## file!
Parameters: File* file, addr buffer, cell count

Requires: File

Writes `count` bytes to the given file from `buffer`

## core_get_arg
Parameters: cell which

Requires: Args

Returns the address to a null-terminated string containing the `which`th command-line
argument

## core_get_arg_length
Parameters: none

Requires: Args

Returns the number of command-line arguments passed to the program
