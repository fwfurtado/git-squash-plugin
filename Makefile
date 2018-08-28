BIN_DIR = /usr/local/bin
EXTENSION = git-squash
all:
	@echo "usage make [install | uninstall]"

install:
	@echo "Installing git squash extension..." 
	
	@install -d -m 0755 $(BIN_DIR)

	@install -m 0755 $(EXTENSION) $(BIN_DIR)
	
	@echo "Instalation complete"
	
	@echo
	
	@echo "Use git squash --help for more information"

uninstall:
	@echo "Uninstalling git squash extension..."

	@test -d $(BIN_DIR) && \
	cd $(BIN_DIR) && \
	rm -f $(EXTENSION)
	
	@echo "Uninstallation complete"

