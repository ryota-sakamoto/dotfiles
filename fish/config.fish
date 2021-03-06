if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

function fish_user_key_bindings
  bind \cr peco_select_history 
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ryota/google-cloud-sdk/path.fish.inc' ]; . '/Users/ryota/google-cloud-sdk/path.fish.inc'; end

set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin
set -x PATH $PATH $HOME/.cargo/bin
set -x PATH $PATH /Library/TeX/texbin
set -x PATH $PATH /usr/local/opt/dosfstools/sbin/

alias k="kubectl"
set -gx PATH $PATH $HOME/.krew/bin
