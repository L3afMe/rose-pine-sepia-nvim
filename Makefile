watch:
	@echo "Watching for file changes."
	@find ./fnl/ -name "*.fnl" | entr make build

# Credit to nes
build:
	echo "Compiling fennel"
	find ./fnl/ -name "*.fnl" | while read -r line; do\
		file="$${line%.fnl}";\
		file="$${file#./fnl}";\
		root="./lua/rose-pine-sepia";\
		mkdir -p "$$root/${file%/*}";\
		fennel --compile $$line > $$root$$file.lua;\
	done

clean:
	@echo "Removing lua files"
	@rm -rf ./lua/

