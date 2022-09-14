# CyberDropDL-Docker

[DockerHub](https://hub.docker.com/r/nelshi/cyberdropdl-docker)

[Cyberdrop-DL](https://github.com/Jules-WinnfieldX/CyberDropDownloader) in Docker format with the ability to pass custom arguments via Environment Variable.

# Usage

Working Directory is `/app`, so this needs a Volume/Bind mapping.

Environment Variable `CUSTOMARGS` allows for custom arguments to be passed to override the defaults.

Command to Run

`docker run --rm -it -v $(pwd):/app nelshi/cyberdropdl-docker:latest`
