vscode-settings
=========

backup & installer for vscode setting.

## Install
```bash
git clone https://github.com/fnobi/vscode-settings.git

cd vscode-settings
make
```

## Uninstall
```bash
% cd vscode-settings
% make clean
```

## Backup extensions

```bash
% cd vscode-settings
% code --list-extensions > extensions-list.txt
```

## Restore extensions

```bash
% cd vscode-settings
% cat extensions-list.txt | xargs -n 1 code --install-extension
```