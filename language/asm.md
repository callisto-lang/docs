# Asm statements
Asm statements allow you to write assembly code that is put in the compiler's output
assembly

Example:
```
asm
	"xor rax, rax"
	"xor rbx, rbx"
end
```

It's basically a list of strings containing assembly code

Currently there is no way to use variable identifiers in asm statements (unless it's
global, which means you have to use the format `__global_NAME`).
