setopt prompt_subst
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="%n@%T %w {\e[36m}{$git_branch}{\e[0m}\[{$txtred}\]{$git_dirty}\[{$txtrst}\]\$ "
export PS1=$'%{\e[0;36m%}%n@%m%{\e[0m%} ~ %15<..<%~%<< %{\e[0;36m%}( ͡° ͜ʖ ͡°)%{\e[0m%}%{\e[0;33m%}$(find_git_branch && echo $git_branch)%{\e[0m%} '

alias gmou='gcc -Wall -Wextra -Werror'
alias nor='norminette --CheckForbiddenSourceHeader'
alias goes='clear && echo "GOES" && echo "(have you hugged a unikitty today?)\n" && cd $HOME/Documents/repos/ && ls'
alias gutils='gmou $HOME/Documents/repos/42utils/utils.o'
alias bupdate='cp $HOME/Documents/repos/42utils/.bashrc ~/.bashrc && source ~/.bashrc && echo "bashrc file reloaded!"'
alias bedit='echo "editing bashrc, bupdate afterwards!" && vi $HOME/Documents/repos/42utils/.bashrc'

function test42 {
	f_path="$HOME/Documents/repos/"
	m_path="$HOME/Documents/42testing/"
	l_path=$1
	l_path+="/"
	l_path+=$2
	l_path+="/*.c"
	f_path+=$l_path
	m_path+=$l_path
	f_path=$(find "$f_path")
	gmou $(find $f_path) $(find $m_path) -o test
	./test
}

# enable the git bash completion commands
#source ~/.git-completion.sh
fpath=(~/.zsh $fpath)
