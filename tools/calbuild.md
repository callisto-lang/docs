# Calbuild
Calbuild is a build system for Callisto. It is available at
<https://github.com/callisto-lang/calbuild>.

## Commands
- `calbuild init` - Create a project
- `calbuild clean` - Clean build files
- `calbuild build` - Build projects
  - `-v` - Verbose output
  - `-nd` - Do not delete `.build` on error (Only recommended for debugging the compiler)
  - `-os OS` - Build for `OS`
  - `-b BACKEND` - Compile using `BACKEND`

## Project file documentation
Calbuild uses a DSL for project configuration. It uses the extension `.ysl`.

In parameters, you can use `$VARIABLE_NAME` to use the value of that variable
as a parameter. All variables are strings.

### Commands
#### `set VARIABLE VALUE`
Set `VARIABLE` to `VALUE`

#### `project NAME PATH`
Create a new project named `NAME`

If `PATH` points to a folder, then all `.cal` files in that folder will be used
for the project. Their module names will be `NAME.FILE`, where `FILE` is the source
file with the extension removed.

If `PATH` points to a file, then that file alone will be used for the project,
and the module name will be the base name of `PATH` with the extension removed.

#### `add VARIABLE VALUE`
Appends `VALUE` to `VARIABLE`. `VARIABLE` is created if it does not exist yet.

#### `depends PATH`
Executes the `project.ysl` in `PATH`, so you can add libraries to your project.

`depends` should be used before any `project` statements, so libraries compile
first.

Example:
```
set name Foo
depends "lib/std"
project "foo" "source/"
```

#### `option OPT`
Enables `OPT`

Options:
- `UseLibC` - Link `c` at link time

### Variables
- `Name` - Name of the project as a whole
- `BuildFlags` - Compiler flags
- `LinkFlags` - Callisto module linker flags
- `Dir` - Current project directory
