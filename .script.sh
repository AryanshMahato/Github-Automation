#!/usr/bin/env bash

#Note: For Windows user=> Paste path in unix file format
#  Follow to get Unix Path Format:
#   1. Open git-bash and navigate to your folder
#   2. Type pwd and press ENTER
#   3. Copy output path and paste below


function create() {
  cd "YOUR_PROJECT_PATH_HERE"
  mkdir "$1" || exit
  cd "$1"
  if [ -z "$1" ]; then
    echo "Please specify file name as an arguement"
  else
    python /c/etc/Automation/Project/main.py $1
  fi

  touch .gitignore
  touch .readme
  git init
  git remote add origin git@github.com:AryanshMahato/$1
  git add .
  git commit -m "Initial Commit"
  git push origin master


}

