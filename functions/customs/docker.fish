set -g PATH "/c/Program Files/Docker/Docker/resources/bin" $PATH

function di
    docker images --format "table {{.ID}}\t{{.Repository | printf \"%-.40s\"}}\t{{.Tag}}\t{{.CreatedSince}}\t{{.Size}}"
end

function dp
    docker ps --format "table {{.ID}}\t{{.Image | printf \"%-.30s\"}}\t{{.Command}}\t{{.CreatedAt}}\t{{.Status}}\t{{.Ports}}\t{{.Names}}"
end

function dpa
    docker ps -a --format "table {{.ID}}\t{{.Image | printf \"%-.30s\"}}\t{{.Command}}\t{{.CreatedAt}}\t{{.Status}}\t{{.Ports}}\t{{.Names}}"
end

function psa
    docker ps -a --format "table {{.ID}}\t{{.Image | printf \"%-.30s\"}}\t{{.Command}}\t{{.CreatedAt}}\t{{.Status}}\t{{.Ports}}\t{{.Names}}"
end

function dcur
    docker container ls -f status=running -l -q
end

function de
    docker exec -it (dcur) bash
end

function desh
    docker exec -it (dcur) sh
end

function defish
    docker exec -it (dcur) fish
end

function dstart
    docker start $argv
end

function dstop
    docker stop (dcur)
end

function drm
    docker rm $argv
end

function drmi
    docker rmi $argv
end

function dcu
    docker-compose up $argv
end

alias d=docker
