if not functions -q fisher
    # curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
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
