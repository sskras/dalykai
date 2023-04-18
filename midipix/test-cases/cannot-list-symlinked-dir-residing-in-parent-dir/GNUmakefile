all:
	mkdir -v 1-real-dir
	ln -sv /home 2-symlinked-dir
	@echo
	@echo Accessing the parent dir:
	@cd 1-real-dir && \
	ls -Al --color ..
