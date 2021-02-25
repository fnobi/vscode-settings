SETTINGS_ROOT = $(HOME)/Library/Application\ Support/Code/User
REPO = $(PWD)
MAKE_DATE := `date "+%Y%m%d-%H%M%S"`

all: $(SETTINGS_ROOT)/settings.json $(SETTINGS_ROOT)/keybindings.json $(SETTINGS_ROOT)/snippets

$(SETTINGS_ROOT)/settings.json:
	ln -s $(REPO)/settings.json $(SETTINGS_ROOT)/settings.json

$(SETTINGS_ROOT)/keybindings.json:
	ln -s $(REPO)/keybindings.json $(SETTINGS_ROOT)/keybindings.json

$(SETTINGS_ROOT)/snippets:
	ln -s $(REPO)/snippets $(SETTINGS_ROOT)/snippets

clean:
	if [ -e $(SETTINGS_ROOT)/settings.json ]; then mv $(SETTINGS_ROOT)/settings.json $(REPO)/settings.$(MAKE_DATE).json ; fi
	if [ -e $(SETTINGS_ROOT)/keybindings.json ]; then mv $(SETTINGS_ROOT)/keybindings.json $(REPO)/keybindings.$(MAKE_DATE).json ; fi
	if [ -e $(SETTINGS_ROOT)/snippets ]; then mv $(SETTINGS_ROOT)/snippets $(REPO)/snippets.$(MAKE_DATE) ; fi
