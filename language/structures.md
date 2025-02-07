# Structures

Structures are defined like this:
```
struct NAME
	TYPE NAME
	TYPE NAME
	TYPE NAME
	...
end
```

They will define a new type, which is the total size of all member elements (with no
padding)

If you want to add an array to the structure, you do it like this:

```
array LENGTH TYPE NAME
```

For each member variable, it will define an offset constant for them. The format for
these constants is `struct.member`

Example:
```
struct MyStruct
	cell foo
	cell bar
end

MyStruct.foo print_dec new_line # 0
MyStruct.bar print_dec new_line # 8, if cells are 64-bit
```

Structures also define a constant containing the size, which is in the format of
`struct.sizeOf`

## Reading members
To access members, write the struct variable and then the member name. You can also
use more identifiers for structs inside the struct:

```
let MyStruct foo
foo.bar.baz print_dec
```

## Writing members
Use the `->` syntax, like this:

```
let MyStruct foo
5 -> foo.bar.baz
```

## Get the address of members
Use the `&` prefix

```
let MyStruct foo
&foo.bar.baz print_dec
```

## Inheritance
Structures can inherit from 1 structure, and the syntax for that is this:

```
struct Child : Parent

end
```

This will also create offset constants for all of the members of the parent structure
