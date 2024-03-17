# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export EDITOR="nvim"
export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/asdf-vm/asdf.sh
source /home/mirek/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias ls="exa --icons"
alias cat="bat --style=auto"
#git bare dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
#ctrl f to open fzf/tmux session
bindkey -s ^f "tmux-sessionizer\n"

export PATH="$HOME/.local/bin":$PATH
export FLYCTL_INSTALL="/home/mirek/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"
export PATH=$PATH:/home/mirek/bin
#fzf ripgrep
alias f="fzf-ripgrep"
#fzf and cd
alias fcd='cd "$(find "$HOME" -type d | fzf)"'
bindkey -s '^[f' 'cd "$(find "$HOME" -type d | fzf)"\n'
PATH=~/.console-ninja/.bin:$PATH
