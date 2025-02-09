#!/bin/zsh
code --install-extension adpyke.vscode-sql-formatter
code --install-extension akamud.vscode-theme-onedark
code --install-extension christian-kohler.path-intellisense
code --install-extension davidanson.vscode-markdownlint
code --install-extension devsense.composer-php-vscode
code --install-extension devsense.intelli-php-vscode
code --install-extension devsense.phptools-vscode
code --install-extension devsense.profiler-php-vscode
code --install-extension donjayamanne.githistory
code --install-extension eamodio.gitlens
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension golang.go
code --install-extension humao.rest-client
code --install-extension ipedrazas.kubernetes-snippets
code --install-extension irongeek.vscode-env
code --install-extension mechatroner.rainbow-csv
code --install-extension mhutchie.git-graph
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-ceintl.vscode-language-pack-ja
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-python.debugpy
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode.makefile-tools
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension mutantdino.resourcemonitor
code --install-extension pkief.material-icon-theme
code --install-extension redhat.vscode-yaml
code --install-extension xdebug.php-debug
code --install-extension yzhang.markdown-all-in-one

# プラグインのインストールリストを表示
code --list-extensions | xargs -L 1 echo code --install-extension
