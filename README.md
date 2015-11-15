# CoreOS in Docker

`docker run --privileged --rm --tty --interactive steigr/coreos:296.0.0`

## Notes

Provide `/var/lib/coreos-install/user_data`, `/usr/share/oem/cloud-config.yml`, and `/usr/share/oem/bin/setup-environment` to configure the container accordingly.

Follow guides at https://coreos.com.

## Bugs

- `--privileged` is needed for docker-in-docker and systemd

## Build Status

[![Circle CI](https://circleci.com/gh/steigr/coreos/tree/alpha.svg?style=shield&circle-token=81eaea95884c383681fc107d95893c4cb409aa1a)](https://circleci.com/gh/steigr/coreos/tree/alpha)
