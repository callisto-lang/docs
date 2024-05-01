# Unions
Unions take a list of types and creates a new type that is the same size as the biggest
type in the list

Syntax:

```
union NAME
	TYPE
	TYPE
	TYPE
	...
end
```

You can get the size of a union type by typing `(union name).sizeof` without the
parantheses
