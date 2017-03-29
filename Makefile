CURDIR  = $(PWD)
HOMEDIR = $(HOME)

BASH = /bin/bash
LN   = /bin/ln
MV   = /bin/mv
RM   = /bin/rm

dotfiles = .bashrc         \
           .bash_functions \
           .config         \
           .emacs.d        \
           .gitconfig      \
           .pythonrc       \
           .vim            \
           .vimrc          \
           .Xdefaults

dotlinks = $(addprefix $(HOMEDIR)/,$(dotfiles))


.PHONY: all
all: backup clean install 

.PHONY: backup
backup:
	for i in $(dotlinks); do \
		if [ -f $$i ] || [ -d $$i ]; then \
			$(MV) --verbose $$i $$i.bck || exit $$?; \
		fi \
	done

.PHONY: clean
clean:
	$(RM) --verbose --force --recursive $(dotlinks)


$(dotlinks): $(addprefix $(HOMEDIR)/,%) : $(addprefix $(CURDIR)/,%)
	$(LN) --verbose --symbolic --no-target-directory $< $@

.PHONY: dotfiles
dotfiles: $(dotlinks)

.PHONY: install
install: dotfiles

.PHONY: uninstall
uninstall:
	for i in $(dotlinks); do \
		if [ -L $$i ]; then \
			$(RM) --verbose $$i || exit $$? ; \
		fi \
	done

