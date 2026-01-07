# 🏠 Dotfiles

Personal macOS development environment configuration.

## 🚀 Setup

**Prerequisites:** Install [Homebrew](https://brew.sh/)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**Installation:**

```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# Install packages from Brewfile
brew bundle install

# Deploy all configurations
stow */
```

That's it! Your configurations are now symlinked to your home directory.

## 📝 Daily Usage

```bash
# Update all packages
brew update && brew upgrade

# Re-deploy all configurations
cd ~/.dotfiles && stow -R */

# Deploy a specific package
cd ~/.dotfiles && stow <package-name>

# Remove a package
cd ~/.dotfiles && stow -D <package-name>
```

## ➕ Adding New Configurations

```bash
cd ~/.dotfiles

# Create package directory with home structure
mkdir -p <package>/.config/<app-name>

# Move your config files
mv ~/.config/<app-name> <package>/.config/

# Deploy it
stow <package>

# Track changes
git add <package>
git commit -m "Add <package> configuration"
```

## 💡 How It Works

This repository uses [GNU Stow](https://www.gnu.org/software/stow/) to manage dotfiles. Each directory is a "package" containing files that mirror your home directory structure:

```
package/
├── .config/
│   └── app/      → ~/.config/app/
└── .zshrc        → ~/.zshrc
```

Stow creates symlinks, so editing `~/.config/app/` automatically syncs with `~/.dotfiles/package/.config/app/`.

## 📦 Managing Packages

```bash
# Add new Homebrew package
brew install <package>
cd ~/.dotfiles && brew bundle dump --force

# Install from Brewfile
brew bundle install

# Check for missing packages
brew bundle check
```

## 📄 License

MIT License - Feel free to use and modify as you wish.
