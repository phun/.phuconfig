PHUBAR Development Suite
======

This repository contains my settings and configurations for my development suite which consists of:
- iTerm2: terminal
- zsh: shell
- vim: terminal text editor
- VS Code: IDE

## zsh
<p align="center">
    <img width="754" alt="Screenshot 2023-06-18 at 12 53 35 AM" src="https://github.com/phun/.phuconfig/assets/410858/5a508617-7ee4-4e48-9d49-58621249cce3">
</p>

### Features
- Beautiful UI via `romkatv/powerlevel10`
- Suggests commands via `zsh-autosuggestions`
- Syntax highlighting via `zsh-syntax-highlighting`
- Minimal performance costs compared to oh-my-zsh
- Package management via `antigen`

### Setup
1. Replace your `~/.zshrc` with `phubar-dev-suite/.zshrc`
2. In your existing `zsh` shell, run `source ~/.zshrc`. Or, close it and open a new shell to automatically initialize one with the new config.

## iTerm2
### Setup
1. Open Preferences (OSX: <kbd>Cmd</kbd>+<kbd>,</kbd>)
2. Select the `Appearance` tab and under `General`, change the theme to `Minimal`
3. Select the `Profile` tab and import `phubar-dev-suite//iterm2/PHUBAR.json`

## vim
My `.vimrc` contains no dependencies and is fully compatible with `vim` and `neovim`.

It is lightweight so that you can safely copy the configuration to any machine without installing additional plugins.

For a feature-rich experience, install my `neovim` setup. _(coming soon!)_.

### Setup
1. Replace your `~/.vimrc` with `phubar-dev-suite/.vimrc`

## VS Code
### Setup
#### User Settings
1. Open the Command Palette (OSX: <kbd>Cmd</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>) and run `Preferences: Open User Settings (JSON)`
2. Replace contents with that in `phubar-dev-suite/vscode/settings.json`
#### Keyboard Shortcuts
1. Open the Command Palette (OSX: <kbd>Cmd</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>) and run `Preferences: Open Keyboard Shortcuts (JSON)`
2. Replace contents with that in `phubar-dev-suite/vscode/keybindings.json`
