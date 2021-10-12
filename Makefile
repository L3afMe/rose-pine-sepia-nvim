watch:
	@echo "Watching for file changes."
	@find ./lua/ -name "*.fnl" | entr make build

# Credit to nes
build:
	echo "Compiling fennel"
	find ./lua/ -name "*.fnl" | while read -r line; do\
    x="$${line%.fnl}";\
    x="$${x#./}";\
		fennel --compile $$line > ./$$x.lua;\
	done

clean:
	@echo "Removing lua files"
	@find ./lua/ -name "*.lua" | xargs rm -rf

