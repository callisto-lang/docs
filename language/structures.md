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

For each member variable, it will define an offset constant for them. This is used for
accessing the elements later. The format for these constants is `struct.member`

Example:
```
struct MyStruct
	cell foo
	cell bar
end

MyStruct.foo printdec new_line # 0
MyStruct.bar printdec new_line # 8, if cells are 64-bit
```

Structures also define a constant containing the size, which is in the format of
`struct.sizeof`

## Inheritance
Structures can inherit from 1 structure, and the syntax for that is this:

```
struct Child : Parent

end
```

This will also create offset constants for all of the members of the parent structure
