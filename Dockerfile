FROM alpine
RUN apk add --no-cache openssh git=2.20.1-r0 && \
	apk update
ENV GIT_SSH_COMMAND='ssh -o StrictHostKeyChecking=no'
