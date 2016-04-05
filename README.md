# CoreOS in Docker

`docker run --cap-add=NET_ADMIN --cap-add=SYS_ADMIN --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --rm --tty --interactive core/coreos:alpha`

## Notes

Provide `/var/lib/coreos-install/user_data`, `/usr/share/oem/cloud-config.yml`, and `/usr/share/oem/bin/setup-environment` to configure the container accordingly.

Follow guides at https://coreos.com.

## Limitations / Capabilities

- `--volume=/sys/fs/cgroup:/sys/fs/cgroup:ro` is needed to run systemd, see [github/maci0/docker-systemd-unpriv](https://github.com/maci0/docker-systemd-unpriv) for details.
- `--cap-add=SYS_ADMIN` is needed to start (at least) early-docker-daemon (bind-mounts)
- `--cap-add=NET_ADMIN` is needed to start docker-daemon (networking)
