docs: std/cores std/std std/uxn core language index.md
	caldoc -od docs -s std/cores -s std/std -s std/uxn -s core -s language -s tools -i index.md

clean:
	rm -r docs
