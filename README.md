# Dotfiles Management Repo

## Requirements
Install following things first

### Git
```
apt get install git -y
```

### Git
```
apt get install stow -y
```

## Installation
To check what simlinks will be created, run:
```
stow -nvt ~ */
```

To create the simlinks run:
```
stow -vt ~ */
```