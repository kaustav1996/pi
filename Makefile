.ONESHELL:
SHELL := /bin/bash

# ███████████████████████████████████████████████████████████████████████

pi.setup:
	@. .envrc
	@./scripts/setup.sh

# ███████████████████████████████████████████████████████████████████████

pi.ssh:
	@. .envrc
	@./scripts/ssh_pi.sh $${PI_LOCAL_IP}

# ███████████████████████████████████████████████████████████████████████

### Update Code
pi.update:  ## Add a new biller
	@./scripts/git_pull.sh

# ███████████████████████████████████████████████████████████████████████

pi.command:
	@. .envrc
	@./scripts/send_command.sh $${PI_LOCAL_IP} "$${COMMAND}"

# ███████████████████████████████████████████████████████████████████████

### Capture Photo

pi.capture:  ## Add a new biller
	@./scripts/take_photo.sh

# ███████████████████████████████████████████████████████████████████████
