#!/bin/bash

#Script utilisé pour la contruction du site

init_site_submodule () {
    git fetch
    sha=$(git rev-parse HEAD)
     git submodule init
    git submodule update
    git worktree add -B gh-pages public origin/gh-pages
    ls public
}

build_site () {
    hugo
}

publish_site () {
    cd public 
    git diff --exit-code .>/dev/null
    isDiff=$?
    if [ $isDiff != 0 ]
    then
      echo "Des choses à commiter !"
      git add --all
      git commit -m "Mise à jour du site" -m "Commit : $sha    Date : $(TZ='Europe/Paris' date -Iseconds)"
      git push
    else
      echo "Rien à commiter !"
    fi
}

init_site_submodule
build_site
publish_site
