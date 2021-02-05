
# -- php --
alias psr1='phpcs --colors --standard=PSR1'
alias psr2='phpcs --colors --standard=PSR2'
alias zend='phpcs --colors --standard=Zend'
alias squiz='phpcs --colors --standard=Squiz'
alias mys='phpcs --colors --standard=MySource'

alias fpsr1='phpcbf --standard=PSR1'
alias fpsr2='phpcbf --standard=PSR2'
alias fzend='phpcbf --standard=Zend'
alias fsquiz='phpcbf --standard=Squiz'
alias fmys='phpcbf --standard=MySource'

# -- apache --
alias ap2log='tail -f /var/log/apache2/error.log'
# -- xdebug --
alias xdebugon='sudo phpenmod xdebug && sudo service apache2 reload'
alias xdebugoff='sudo phpdismod xdebug && sudo service apache2 reload'

alias phpunit='phpunit --debug'