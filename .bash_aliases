#Alias'
# Clear shortcut
alias cls='clear'

# Copy pwd to clipboard
alias cwd='pwd | tr -d "\r\n" | xclip -selection clipboard'

# untar
alias untar='tar xvf'

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | xclip -selection clipboard | echo '=> Public key copied to pasteboard.'"

# Pipe my private key to my clipboard.
alias prikey="more ~/.ssh/id_rsa | xclip -selection clipboard | echo '=> Private key copied to pasteboard.'"

# IP addresses
alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="sudo ifconfig | grep -Eo 'inet (addr:)?([0-9]*\\.){3}[0-9]*' | grep -Eo '([0-9]*\\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias ips="sudo ifconfig -a | grep -o 'inet6\\? \\(addr:\\)\\?\\s\\?\\(\\(\\([0-9]\\+\\.\\)\\{3\\}[0-9]\\+\\)\\|[a-fA-F0-9:]\\+\\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

#nc server
alias ncserver="nc -l -k -p 1234"

alias rm=trash

#hibp
hibp() {
        curl -fsS "https://haveibeenpwned.com/api/v2/breachedaccount/$1" | jq -r 'sort_by(.BreachDate)[] | [.Title,.Domain,.BreachDate,.PwnCount] | @tsv' | column -t -s$'\t'
            }
#weather
alias weather='curl wttr.in'

#Copy file contents to clipboard
alias ftc='function _blah(){ more "$1" | xclip -selection clipboard; }; _blah'
