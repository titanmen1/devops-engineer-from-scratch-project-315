IMAGE ?= ghcr.io/titanmen1/project-devops-deploy
TAG ?= latest

PLATFORMS ?= linux/amd64

ansible-install:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook playbook.yml --vault-password-file .vault_pass -v

rollback:
	ansible-playbook rollback.yml --vault-password-file .vault_pass
