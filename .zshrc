# ------------------------------------------------------------------------------
#  Zsh Configuration | Archcraft Edition
#  Optimized for Speed, Productivity & Development
# ------------------------------------------------------------------------------

# ➤ Set Path to Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# ➤ Theme (Using Archcraft's theme)
ZSH_THEME="archcraft"

# ------------------------------------------------------------------------------
#  Plugins (Enable essential plugins for speed & usability)
# ------------------------------------------------------------------------------
plugins=(
  git                    # Essential Git shortcuts
  zsh-autosuggestions    # Command history suggestions
  zsh-syntax-highlighting # Command syntax highlighting
  zsh-completions        # Advanced shell completions
  fzf                    # Fuzzy finder for blazing-fast search
)

source $ZSH/oh-my-zsh.sh

# ------------------------------------------------------------------------------
#  On-Demand Rehash (Automatically refresh cache when new packages are installed)
# ------------------------------------------------------------------------------
zshcache_time="$(date +%s%N)"

autoload -Uz add-zsh-hook
rehash_precmd() {
    if [[ -a /var/cache/zsh/pacman ]]; then
        local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
        if (( zshcache_time < paccache_time )); then
            rehash
            zshcache_time="$paccache_time"
        fi
    fi
}
add-zsh-hook -Uz precmd rehash_precmd

# ------------------------------------------------------------------------------
#  Function: Extract (Automatically extract archives)
# ------------------------------------------------------------------------------
extract() {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2)  tar xjf "$1" ;;
            *.tar.gz)   tar xzf "$1" ;;
            *.tar.xz)   tar xJf "$1" ;;
            *.tar)      tar xf "$1" ;;
            *.gz)       gunzip "$1" ;;
            *.bz2)      bunzip2 "$1" ;;
            *.zip)      unzip "$1" ;;
            *.rar)      unrar x "$1" ;;
            *.7z)       7z x "$1" ;;
            *.iso)      7z x "$1" ;;
            *)          echo "Unsupported file type: '$1'" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# ------------------------------------------------------------------------------
#  Aliases for Productivity
# ------------------------------------------------------------------------------
# ➤ Navigation
alias ws='cd ~/workspace'
alias cfg='cd ~/.config/'
alias nv='cd ~/.config/nvim/'
alias kty='cd ~/.config/kitty/'
alias zrc='nvim ~/.zshrc'
alias zrcs='source ~/.zshrc'

# ➤ Improved LS Commands (Using eza with Icons & Git support)
alias ls='eza --icons --group-directories-first'
alias ll='eza -lah --icons'
alias la='eza -a --icons'
alias lt='eza -T --icons'
alias lg='eza -l --git --icons'

# ➤ Git Shortcuts
alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'

# ➤ Neovim & Terminal Shortcuts
alias vim='nvim'
alias ktyc='nvim ~/.config/kitty/kitty.conf'

# ------------------------------------------------------------------------------
#  Export Paths (Ensure proper ordering without duplication)
# ------------------------------------------------------------------------------
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/nvim/bin:/usr/local/bin:$PATH"
export EDITOR="nvim"
export VISUAL="nvim"

# ------------------------------------------------------------------------------
#  Startup Commands
# ------------------------------------------------------------------------------
neofetch # Display system info on terminal startup

# Load fzf configuration if available
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
