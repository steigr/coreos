from scratch
maintainer Mathias Kaufmann <steigr@me.com>
entrypoint ["/usr/lib64/systemd/systemd"]
env container=docker
volume ["/usr/share/oem","/home","/var","/etc","/root","/home","/opt","/media","/mnt"]
add coreos-723.0.0.tar.xz /
