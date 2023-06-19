PHUBAR Development Suite
======

This repository contains my settings and configurations for my development suite which consists of:
- Terminal setup:
    - **zsh:** shell
    - **iTerm2:** terminal
    - **neovim:** feature-rich text editor
    - **vim:** lightweight text editor
- **VS Code:** feature-rich IDE
- **Karabiner-Elements:** OSX keybinding customizer

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
1. Run: `cp -R phubar-dev-suite/.zsh ~/`
2. In your existing `zsh` shell, run `source ~/.zshrc`. Or, close it and open a new shell to automatically initialize one with the new config.

## iTerm2
### Setup
1. Open Preferences (OSX: <kbd>Cmd</kbd>+<kbd>,</kbd>)
2. Select the `Appearance` tab and under `General`, change the theme to `Compact`

3. Select the `Profile` tab and import `phubar-dev-suite//iterm2/PHUBAR.json`

## neovim

<p align="center">
    <img width="1098" alt="Screenshot 2023-06-19 at 12 16 32 AM" src="https://github.com/phun/phubar-dev-suite/assets/410858/cbb18b65-5ffc-49a3-a2fb-7b30c9c1ef9e">
</p>

## vim

<p align="center">
    <img width="810" alt="Screenshot 2023-06-18 at 3 40 24 AM" src="https://github.com/phun/phubar-dev-suite/assets/410858/72c338b1-f223-49cc-bbf0-b1effc8e9b34">
</p>

My `.vimrc` contains no dependencies and is fully compatible with `vim` and `neovim`.  It is lightweight so that you can safely copy the configuration to any machine without installing additional plugins.
For a feature-rich experience, install my `neovim` setup _(coming soon!)_.

### Setup
1. Replace your `~/.vimrc` with `phubar-dev-suite/.vimrc`

## VS Code

<p align="center">
    <img width="1136" alt="Screenshot 2023-06-19 at 12 06 53 AM" src="https://github.com/phun/phubar-dev-suite/assets/410858/571dde21-d209-4e9e-ae22-48608d55b034">
</p>

### Setup
#### User Settings
1. Open the Command Palette (OSX: <kbd>Cmd</kbd>+<kbd>Shift</kbd>+<kbd>p</kbd>) and run `Preferences: Open User Settings (JSON)`
2. Replace contents with that in `phubar-dev-suite/vscode/settings.json`
#### Keyboard Shortcuts
1. Open the Command Palette (OSX: <kbd>Cmd</kbd>+<kbd>Shift</kbd>+<kbd>p</kbd>) and run `Preferences: Open Keyboard Shortcuts (JSON)`
2. Replace contents with that in `phubar-dev-suite/vscode/keybindings.json`

## Karabiner-Elements
### Features
- Maps (<kbd>Fn</kbd> + <kbd>h</kbd> <kbd>j</kbd> <kbd>k</kbd> <kbd>l</kbd>) to <kbd>←</kbd> <kbd>↓</kbd> <kbd>↑</kbd> <kbd>→</kbd>
- Maps (<kbd>Fn</kbd> + <kbd>x</kbd>) to <kbd>Esc</kbd>
### Setup
1. Copy the complex modifications with: `cp -R phubar-dev-suite/.config/karabiner ~/.config`
2. Open Karabiner-Elements and under `Complex Modifications`, add the rule by enabling it
