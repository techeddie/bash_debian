# Only run in interactive shells
case $- in
  *i*) ;;
    *) return;;
esac

# ── Oh My Bash ────────────────────────────────────────────────────────────────
export OSH='/root/.oh-my-bash'

OSH_THEME="slick"
DISABLE_UPDATE_PROMPT=true
OMB_USE_SUDO=true

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)

plugins=(
  git
  bashmarks
)

source "$OSH"/oh-my-bash.sh

# ── Environment ───────────────────────────────────────────────────────────────
export TERM=linux
export EDITOR='nvim'
export VISUAL='nvim'

# ── Restic ────────────────────────────────────────────────────────────────────
source ~/.restic/env.s3-config

# ── Aliases ───────────────────────────────────────────────────────────────────
alias nload='nload ens18'
alias fd='fdfind'
alias lfs='lfs -s filesystem-asc'
alias cd=z

# ── fzf ───────────────────────────────────────────────────────────────────────
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# ── Zoxide ────────────────────────────────────────────────────────────────────
eval "$(zoxide init bash)"

# ── tmux auto-attach ──────────────────────────────────────────────────────────
# Skip if already inside tmux, lf, or a Neovim terminal
if [ -z "$TMUX" ] && [ -z "$LF_LEVEL" ] && [ -z "$NVIM" ]; then
  tmux attach 2>/dev/null || tmux
fi

# ── Keybindings ───────────────────────────────────────────────────────────────
bind -x '"\C-g":"lazygit"'   # Ctrl+G → lazygit
bind -x '"\eg":"lazygit"'    # Alt+G  → lazygit
bind -x '"\C-l":"lf"'        # Ctrl+L → lf
bind -x '"\el":"lf"'         # Alt+L  → lf
