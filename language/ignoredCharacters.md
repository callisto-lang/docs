# Ignored characters
The lexer ignores some characters to help with making code more readable according
to your personal preferences. The characters are:

- `{`
- `}`
- `#`

Outside of strings, these are all ignored no matter what. If you really want to,
you can even use them in the middle of an identifier:

```
print_{}str
```

## Examples of usage
```
[cell 1, 2, 3, 4, 5]
```

```
let Array foo
let Array bar

# ...

{ 5 &foo a@ } &bar a@
```
