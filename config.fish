if test "$TERM_PROGRAM" != "vscode"
    cd ~/
end

for file in ~/.config/fish/functions/**.fish
    source $file
end

# Windows の環境変数を設定
if test -f ~/.config/fish/windows_env.txt
    # ファイルの内容を読み込む
    set file_content (cat ~/.config/fish/windows_env.txt)

    # 最初の '/' までの文字列の長さを取得
    set idx_cut (string match -r -i -- '^.*?/' -- $file_content)

    # '/' 以降の文字列を取得
    if set -q idx_cut[1]
        set paths (string sub -s (string length $idx_cut[1]) -- $file_content)
    else
        set paths $file_content
    end

    # ';' で区切って各パスを環境変数に追加
    for path in (string split ';' $paths)
        # Anaconda と system32 は除外
        if not string match -q '*Anaconda*' -- $path
            if not string match -q '/C/WINDOWS/system32' -- $path
                set -x PATH $path $PATH
            end
        end
    end
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f ~/Anaconda3/Scripts/conda.exe
    eval ~/Anaconda3/Scripts/conda.exe "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<
