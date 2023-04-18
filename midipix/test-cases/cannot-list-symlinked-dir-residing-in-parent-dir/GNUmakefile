all: clean
	@echo
	@echo Running PoC:
	@echo
	mkdir -v 1-real-dir
	ln -sv /home 2-symlinked-dir
	@echo
	@echo Accessing the parent dir:
	@echo
	cd 1-real-dir && \
	ls -Al --color .. \
	
	@echo
	@echo Accessing the symlinked dir name:
	@echo
	cd 1-real-dir && \
	ls -Al --color ../2-symlinked-dir \

clean:
	@echo
	@echo Cleaning up:
	@echo
	rmdir -v 1-real-dir 2>/dev/null || true
	rm -v 2-symlinked-dir 2>/dev/null || true
