if test "$TERM_PROGRAM" != "vscode"
    cd ~/
end

for file in ~/.config/fish/functions/**.fish
    source $file
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f ~/Anaconda3/Scripts/conda.exe
    eval ~/Anaconda3/Scripts/conda.exe "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<
