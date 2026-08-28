eval "$(starship init zsh)"

# Remplacement moderne de ls par eza
alias ls='eza --icons --group-directories-first'
alias ll='eza -la --icons --group-directories-first'
alias tree='eza --tree --icons'

# Remplacement de cat par bat
alias cat='bat --paging=never'

# Initialisation de zoxide (navigation intelligente avec z)
eval "$(zoxide init zsh)"

# Configuration de l'historique Zsh
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY

# Téléchargement automatique et activation de zsh-autosuggestions
if [ ! -d "$HOME/.zsh/zsh-autosuggestions" ]; then
    mkdir -p "$HOME/.zsh"
    git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.zsh/zsh-autosuggestions"
fi
source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Raccourci pour accepter la suggestion avec Ctrl + Espace en plus de la flèche droite
bindkey '^ ' autosuggest-accept

# Intégration des applications Flatpak dans le PATH de recherche
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share:$XDG_DATA_DIRS:/usr/local/share:/usr/share"
