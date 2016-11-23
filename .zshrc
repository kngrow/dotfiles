# 環境変数
  export LANG=ja_JP.UTF-8
 
# 補完機能を有効にする
  autoload -Uz compinit
  compinit
  setopt auto_pushd
  setopt pushd_ignore_dups
  HISTFILE=~/.zsh_history
  HISTSIZE=1000000
  SAVEHIST=1000000
  setopt print_eight_bit
  setopt no_beep
	  
# フローコントロールを無効にする
 setopt no_flow_control
# Ctrl+Dでzshを終了しない
 setopt ignore_eof
# '#' 以降をコメントとして扱う
setopt interactive_comments
 alias ll='ls -laG'
 alias ls='ls -G' 
		   
# nvm 設定
 export PATH="$HOME/.ndenv/bin:$PATH"
 eval "$(ndenv init - zsh)"		    
# rbenv 設定
 export PATH="$HOME/.rbenv/bin:$PATH"
 eval "$(rbenv init - zsh)"
			  
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
 
 PROMPT='(￣･ω･￣) < :'
 alias ls='ls --color=auto'
 #alias dir='dir --color=auto'
 #alias vdir='vdir --color=auto'
 alias grep='grep --color=auto'
 alias fgrep='fgrep --color=auto'
 alias egrep='egrep --color=auto'			    

### Added by the Heroku Toolbelt
 export PATH="/usr/local/heroku/bin:$PATH"
 export SSL_CERT_FILE="/usr/local/etc/ssl/cacert.pem"

 export PATH="$PATH:$HOME/.composer/vendor/bin"
 
# vim:set ft=zsh :
