PHUBAR Development Suite
======

This repository contains my settings and configurations for my development suite which consists of:
- iTerm2: terminal
- zsh: shell
- vim: terminal text editor
- VS Code: IDE

## zsh

<img width="754" alt="Screenshot 2023-06-18 at 12 53 35 AM" src="https://github.com/phun/.phuconfig/assets/410858/5a508617-7ee4-4e48-9d49-58621249cce3">

### Features
- Beautiful UI via `romkatv/powerlevel10`
- Suggests commands via `zsh-autosuggestions`
- Syntax highlighting via `zsh-syntax-highlighting`
- Minimal performance costs compared to oh-my-zsh

## iTerm2
### Setup
1. Open Preferences (OSX: <kbd>Cmd</kbd>+<kbd>,</kbd>)
2. Select the `Appearance` tab and under `General`, change the theme to `Minimal`
3. Select the `Profile` tab and import `/iterm2/PHUBAR.json`

## VS Code
### Setup
#### User Settings
1. Open the Command Palette (OSX: <kbd>Cmd</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>) and run `Preferences: Open User Settings (JSON)`
2. Replace contents with that in `/vscode/settings.json`
#### Keyboard Shortcuts
1. Open the Command Palette (OSX: <kbd>Cmd</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>) and run `Preferences: Open Keyboard Shortcuts (JSON)`
2. Replace contents with that in `/vscode/keybindings.json`
