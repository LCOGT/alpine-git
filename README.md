# alpine-git
An Alpine GNU/Linux image with only git installed. Tagged with the matching git
version used in the image.

## Build
```
make
```
This will build the image and push it to the LCO docker registry.

## Usage
The startup command (aka entrypoint) must be overridden with a git command for
this image to be useful which may be done using these commands:
```
eval "$(ssh-agent)" && ssh-add /etc/ssh/id_rsa && git clone git@github.com:my-repo /my/dest/path
```
This assumes that an ssh private key is available for the container to use at
`/etc/ssh/id_rsa` and will clone the repo `git@github.com:my-repo` into
`/my/dest/path`.
