docs: std/cores std/std core language index.md
	caldoc -od docs -s std/cores -s std/std -s core -s language -i index.md

clean:
	rm -r docs
