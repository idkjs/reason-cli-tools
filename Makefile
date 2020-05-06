.PHONY: js native clean

default:
	@@echo "use 'make js' or 'make native'"

install:
	yarn && esy

js:
	yarn bsb -make-world

native:
	esy b dune build @all

clean:
	esy dune clean
	yarn bsb -clean-world
