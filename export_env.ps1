$path = (Get-ChildItem Env:Path).Value

# ドライブ文字を変換 (例: C:\ → /c/)
$path = $path -replace '([A-Za-z]):\\', '/$1/'

# バックスラッシュをスラッシュに変換
$path = $path -replace '\\', '/'

# 末尾のセミコロンを取り除く
$path = $path.TrimEnd(';.')

# UTF-8でファイルに書き出し
$path | Out-File -FilePath windows_env.txt -Encoding utf8 -NoNewline
