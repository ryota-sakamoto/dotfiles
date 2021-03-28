.PHONY: error
error:
	exit 1

.PHONY: install
install:
	./install.sh

.PHONY: multipass
multipass:
	multipass launch -n imperative -c 2 -m 2G --cloud-init ./multipass/cloud-init.yml
