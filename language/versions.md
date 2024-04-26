# Versions
Versions are like the macros in C that you can use with `#ifdef` to compile differently

Each core sets different versions, so the program knows what it is being compiled for.
These are the versions:

- Linux86: "Linux86", "Linux"
- RM86: "RM86"

## Enable statement
This statement uses this syntax:
```
enable VERSION
```

If the given VERSION is not restricted, then it will enable the version

## Requires statement
This statement uses this syntax:
```
requires VERSION
```

If the given VERSION is not enabled, it will error

## Version statement
This is a block statement with this syntax:
```
version VERSION
	BLOCK
end
```

It will only compile BLOCK if the given VERSION is enabled

## Restrict statement
This statement uses this syntax
```
restrict VERSION
```

This will make the compiler error if the given VERSION is ever enabled


