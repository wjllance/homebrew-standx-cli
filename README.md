# StandX CLI Homebrew Tap

Homebrew tap for [standx-cli](https://github.com/wjllance/standx-cli), a CLI tool for StandX perpetual DEX.

## Installation

```bash
# Add this tap
brew tap wjllance/standx-cli

# Install standx-cli
brew install standx-cli

# Upgrade to latest version
brew upgrade standx-cli
```

## Uninstallation

```bash
brew uninstall standx-cli
brew untap wjllance/standx-cli
```

## Usage

After installation, use `standx` command:

```bash
# Login with your StandX credentials
standx auth login --interactive

# View market data
standx market symbols
standx market ticker BTC-USD

# Query account
standx account balances
standx account positions

# Create order
standx order create BTC-USD buy limit --qty 0.1 --price 63000

# More help
standx --help
```

## Documentation

For complete documentation, visit:
- [standx-cli GitHub](https://github.com/wjllance/standx-cli)
- [API Documentation](https://github.com/wjllance/standx-cli/blob/main/API_DOCUMENTATION.md)

## License

MIT License - see [LICENSE](https://github.com/wjllance/standx-cli/blob/main/LICENSE) for details.
