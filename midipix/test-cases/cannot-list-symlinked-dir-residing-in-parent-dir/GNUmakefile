all: clean
	mkdir -v 1-real-dir
	ln -sv /home 2-symlinked-dir
	@echo
	@echo Accessing the parent dir:
	@cd 1-real-dir && \
	ls -Al --color ..

clean:
	@echo
	@echo Cleaning up:
	@echo
	rmdir -v 1-real-dir 2>/dev/null || true
	rm -v 2-symlinked-dir 2>/dev/null || true
