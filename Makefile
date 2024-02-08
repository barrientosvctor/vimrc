install:
	git submodule init
	git submodule update

update:
	git submodule update --remote

uninstall:
	git submodule deinit --all
