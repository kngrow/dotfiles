# 環境変数
  export LANG=ja_JP.UTF-8
  fpath=(~/.zsh/completion $fpath)

 
# 補完機能を有効にする
  autoload -Uz compinit , compinit
  setopt auto_pushd
  setopt pushd_ignore_dups
  HISTFILE=~/.zsh_history
  HISTSIZE=10000
  SAVEHIST=10000
  setopt print_eight_bit
  setopt no_beep
	  
# フローコントロールを無効にする
 setopt no_flow_control
# Ctrl+Dでzshを終了しない
 setopt ignore_eof
# '#' 以降をコメントとして扱う
 setopt interactive_comments
#  保管時の大文字小文字区別しない
 zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
			  
 # 後ろにディレクトリのgit の状態を確認する
 RPROMPT="%{${reset_color}%}"
   
 autoload -Uz vcs_info
 setopt prompt_subst
 zstyle ':vcs_info:git:*' check-for-changes true
 zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
 zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
 zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
 zstyle ':vcs_info:*' actionformats '[%b|%a]'
 precmd () { vcs_info }
 RPROMPT=$RPROMPT'${vcs_info_msg_0_}'
 
 PROMPT='%~ (･∞･) < '

#  各種alias
#  alias ls='ls --color=auto'
 alias ll='ls -laG --color'
 alias ls='ls -G --color' 
		   
 #alias dir='dir --color=auto'
 #alias vdir='vdir --color=auto'
 alias grep='grep --color=auto'
 alias fgrep='fgrep --color=auto'
 alias egrep='egrep --color=auto'			    
 alias display-zoom='gsettings set org.gnome.desktop.interface text-scaling-factor'

### Heroku Toolbelt の設定
 export PATH="/usr/local/heroku/bin:$PATH"
 export SSL_CERT_FILE="/usr/local/etc/ssl/cacert.pem"

 export PATH="$HOME/.composer/vendor/bin:$PATH"
 export PATH="$HOME/.config/composer/vendor/bin:$PATH"
# anyenv
 export PATH="$HOME/.anyenv/bin:$PATH" 
 eval "$(anyenv init -)"

# flutter
 export PATH="$PATH:/usr/local/flutter/bin/"

# vim:set ft=zsh :

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
