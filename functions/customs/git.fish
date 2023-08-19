set -g PATH "/c/Program Files/Git/bin" $PATH

function gadd
  git add .
end

function gcom
  git commit -m $argv
end

function grem
  git remote add origin $argv
end

function gpush
  git push
end

function gpushu
  git push -u origin main
end

function gnewb
  git checkout -b $argv
end

function grmb
  git branch -d $argv
end

function gstash
  git stash
end

function gstashp
  git stash pop
end

function syncbranch
  git fetch --prune
end

function grmcommit
  git reset --soft HEAD^
end
