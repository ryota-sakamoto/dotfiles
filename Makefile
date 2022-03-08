.PHONY: error
error:
	exit 1

.PHONY: install
install:
	bash install.sh

.PHONY: multipass
multipass:
	multipass launch -n primary -c 2 -m 2G --cloud-init ./multipass/cloud-init.yml
