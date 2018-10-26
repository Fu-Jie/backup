alias st="subl"
function hp(){
	export http_proxy="http://127.0.0.1:1080"
	export https_proxy="https://127.0.0.1:1080"
	echo ‘开启http代理!’
}
function sp(){
	unset http_proxy
	unset https_proxy
	echo ‘取消http代理成功!’
}


# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end

