# Include
Include is a statement that includes the contents of another source file into your
code during compilation

Example
```
include "my_file.cal"

# call function from my_file
my_function
```

This statement first checks if the path exists as a local path from the current source
file. In the example above, if the source file including the other file was in /dev/callisto,
then the compiler would first check if /dev/callisto/my_file.cal exists.

If the local file doesn't exist, then it will check if it exists in directories passed
with `-i` to the compiler, so if you passed `-i /dev/lib` it would check if
/dev/lib/my_file.cal exists

Header guards aren't required in Callisto as the compiler automatically checks if
files have been included already
