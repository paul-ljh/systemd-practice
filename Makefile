run:
	podman run --tty --rm --name systemd $$(podman build -q .)

bash:
	podman exec -it systemd bash
