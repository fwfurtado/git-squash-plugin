BIN_DIR = /usr/local/bin
EXTENSION = git-squash
MANUAL = git-squash.1
MAN_PATH=/usr/local/share/man/man1
all:
	@echo "usage make [install | uninstall]"

install:
	@echo "Installing git squash extension..." 
	
	@install -d -m 0755 $(BIN_DIR)

	@install -m 0755 $(EXTENSION) $(BIN_DIR)
	@install -m 0644 $(MANUAL) $(MAN_PATH)
	@echo "Instalation complete"
	
	@echo
	
	@echo "Use git squash --help for more information"

uninstall:
	@echo "Uninstalling git squash extension..."

	@test -d $(BIN_DIR) && \
	cd $(BIN_DIR) && \
	rm -f $(EXTENSION)
	
	@test -d $(MAN_PATH) && \
	cd $(MAN_PATH) && \
	rm -f $(MANUAL)

	@echo "Uninstallation complete"

