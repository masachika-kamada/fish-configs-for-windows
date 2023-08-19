set -g PATH "/c/Program Files/Docker/Docker/resources/bin" $PATH

function di
    docker images
end

function dp
    docker ps
end

function dpa
    docker ps -a
end

function psa
    docker ps -a
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
