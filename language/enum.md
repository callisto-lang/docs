# Enums
Enums have this syntax
```
enum MyEnum
	Foo
	Bar
	Baz = 5
	FooTwo
end
```

Each value starts at 0 and increments automatically, unless if you add a `=`, which will
let you set the value

By default, enums are cell-sized, but you can change the type by adding a `:`, then a
type after the enum name. This is an example:
```
enum MyEnum : u8
	Foo
	Bar
end
```

They define these constants:

- `enum.min` - Smallest value in the enum
- `enum.max` - Biggest value in the enum
- `enum.sizeOf` - Size of the enum type
