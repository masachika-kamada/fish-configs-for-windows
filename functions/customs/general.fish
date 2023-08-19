function edit
    notepad $argv
end

function tar
    tar -xzf $argv
end

function search
    grep $argv * -r
end

function remove
    rm -rf $argv
end
