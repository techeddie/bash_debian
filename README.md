# .bashrc

Bash configuration for the root user on Debian/Ubuntu-based servers.

## Dependencies

| Tool | Purpose | Install |
|------|---------|---------|
| [Oh My Bash](https://github.com/ohmybash/oh-my-bash) | Shell framework & theming | `bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"` |
| [fzf](https://github.com/junegunn/fzf) | Fuzzy finder (Ctrl+R, file search) | `apt install fzf` |
| [zoxide](https://github.com/ajeetdsouza/zoxide) | Smarter `cd` with frecency | `apt install zoxide` |
| [lf](https://github.com/gokcehan/lf) | Terminal file manager | `apt install lf` |
| [lazygit](https://github.com/jesseduffield/lazygit) | Terminal UI for git | [GitHub releases](https://github.com/jesseduffield/lazygit/releases) |
| [nload](https://github.com/rolandriegel/nload) | Network traffic monitor | `apt install nload` |
| [fd-find](https://github.com/sharkdp/fd) | Fast `find` replacement | `apt install fd-find` |
| [nvim](https://neovim.io) | Editor (default `$EDITOR`) | `apt install neovim` |
| [restic](https://restic.net) | Backup tool | `apt install restic` |

## Sections

### Oh My Bash
Theme: `slick`

Active plugins: `git`, `bashmarks`  
Active completions: `git`, `composer`, `ssh`

### tmux auto-attach
On every new interactive shell, tmux is automatically attached or a new session is started.
Skipped when already inside:
- `$TMUX` — an existing tmux session
- `$LF_LEVEL` — lf file manager subshell
- `$NVIM` — a Neovim embedded terminal

### Keybindings

| Shortcut | Action |
|----------|--------|
| `Ctrl+G` / `Alt+G` | Open lazygit |
| `Ctrl+L` / `Alt+L` | Open lf |
| `Ctrl+R` | fzf history search (via fzf) |

### Aliases

| Alias | Expands to | Description |
|-------|-----------|-------------|
| `cd` | `z` | zoxide smart jump |
| `fd` | `fdfind` | fd-find (Debian naming) |
| `nload` | `nload ens18` | Network monitor on `ens18` |
| `lfs` | `lfs -s filesystem-asc` | lf sorted by filesystem |

### Restic
Credentials and S3 config are sourced from `~/.restic/env.s3-config` (not tracked in version control).
