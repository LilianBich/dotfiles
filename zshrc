ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="robbyrussell"

# Add ruby version on prompt (float right)
if [ -x "$(command -v rbenv)" ]; then RPS1='[$(ruby_prompt_info)]$EPS1'; fi

# Useful plugins for Rails development with Sublime Text
plugins=(gitfast brew rbenv last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search)

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
export PATH="${HOME}/bin:${PATH}"
export PATH="${HOME}/anaconda3/bin:${PATH}"

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Enhance history with substring search and purple highlighting
bindkey '^[OA' history-substring-search-up
bindkey '^[OB' history-substring-search-down

alias bi="bundle install"

# UTF-8 is our default encoding
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
