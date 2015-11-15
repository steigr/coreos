# CoreOS in Docker, passthrough mode

If the host system is a coreos installation, your can use the passthrough image.

`docker run --privileged --rm --tty --interactive --volume /usr:/usr steigr/coreos:passthrough`

## Notes

Provide `/var/lib/coreos-install/user_data`, `/usr/share/oem/cloud-config.yml`, and `/usr/share/oem/bin/setup-environment` to configure the container accordingly.

Follow guides at https://coreos.com.

This container uses `/usr` from the host system with its own configuration. The download/build must be done once, as updates inherited from the installed host coreos.
A way better approach is to place it as systemd service and build this upon usage (should take only a few seconds, nothing has to be downloaded, etc.).

## Bugs

- `/etc` is prefilled with some systemd unit masks and a drop-in for automatic console login. Checkout `/etc/systemd/system` without `/etc`-volume before customization. Mask these units by placing `/dev/null`-symlinks at your `/etc`-volume and (optionally) integrate `10-auto-login.conf`-drop-in into your cloud-config.yml.
- `--privileged` is needed for docker-in-docker and systemd.

## Build Status

[![Circle CI](https://circleci.com/gh/steigr/coreos/tree/passthrough.svg?style=shield&circle-token=81eaea95884c383681fc107d95893c4cb409aa1a)](https://circleci.com/gh/steigr/coreos/tree/passthrough)