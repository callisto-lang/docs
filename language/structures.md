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

For each member variable, it will define an offset constant for them. This is used for
accessing the elements later. The format for these constants is `struct.member`

Example:
```
struct MyStruct
	cell foo
	cell bar
end

MyStruct.foo printdec # 0
MyStruct.bar printdec # 8, if cells are 64-bit
```

Structures also define a constant containing the size, which is in the format of
`struct.sizeof`
