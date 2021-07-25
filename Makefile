.ONESHELL:
SHELL := /bin/bash

# ███████████████████████████████████████████████████████████████████████

pi.ssh:
	@. .envrc
	@./scripts/ssh_pi.sh $${PI_LOCAL_IP}


### Capture Photo

pi.capture:  ## Add a new biller
	@./scripts/take_photo.sh

# ███████████████████████████████████████████████████████████████████████

### Update Code
pi.update:  ## Add a new biller
	@./scripts/git_pull.sh

# ███████████████████████████████████████████████████████████████████████

