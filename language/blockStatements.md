# Block statements
Callisto currently has 2 block statements: if and while

## If
If uses this syntax:
```
if CONDITION then
	BLOCK
elseif CONDITION then
	BLOCK
else
	BLOCK
end
```

The condition must contain code that leaves a cell value on the stack. The block in
the statement will be ran if the code returns a non-zero value

## While
While uses this syntax
```
while CONDITION do
	BLOCK
end
```

Like if, the condition also must contain code that leaves a value in the stack. It will
execute the condition, then block over and over until the condition evaluates to 0.

Unlike a do-while statement, the condition is checked before the first iteration
