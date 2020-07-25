HOME="$(echo ~)"
mkdir -p ${HOME}/docker/filezilla-home
xhost +

docker run -ti \
    --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ${HOME}/docker/filezilla-home:/home/filezilla \
    --workdir ${HOME} \
    -e DISPLAY=$DISPLAY \
    -e HOME=${HOME} \
    -e USER=${USER} \
    -e USERID=${UID} \
    ramirezfx/filezilla:latest
