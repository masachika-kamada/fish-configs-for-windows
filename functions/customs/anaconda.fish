function cond
    conda deactivate
end

function cac
    conda activate $argv
end

function ccre
    conda create -n $argv
end

function crem
    conda remove -n $argv --all
end

function cinf
    conda info -e
end

function pup
    pip install -U $argv
end
