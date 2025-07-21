help:  ## Show this help message
	@echo "Usage: make <target>"
	@echo ""
	@echo "Available targets:"
	@awk 'BEGIN {FS = ":.*##"; printf ""} /^[a-zA-Z0-9_-]+:.*##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)
dev-init: ## Initialize Terraform backend for dev
	git pull
	rm -f .terraform/terraform.tfstate
	terraform init -backend-config=./environments/dev/state.tfvars

dev-plan: ## Terraform plan for dev
	terraform plan -var-file=./environments/dev/main.tfvars

dev-apply: dev-init ## Terraform apply for dev
	terraform apply -var-file=./environments/dev/main.tfvars -auto-approve -var token=$(token)

dev-destroy: dev-init ## Terraform destroy for dev
	terraform destroy -var-file=./environments/dev/main.tfvars -auto-approve -var token=$(token)

prod-init: ## Initialize Terraform backend for prod
	rm -f .terraform/terraform.tfstate
	terraform init -backend-config=./environments/prod/state.tfvars

prod-plan: ## Terraform plan for prod
	terraform plan -var-file=./environments/prod/main.tfvars

prod-apply: prod-init ## Terraform apply for prod
	terraform apply -var-file=./environments/prod/main.tfvars -auto-approve -var token=$(token)

prod-destroy: prod-init ## Terraform destroy for prod
	terraform destroy -var-file=./environments/prod/main.tfvars -auto-approve -var token=$(token)

tools-infra: ## tools infra
	git pull
	rm -f .terraform/terraform.tfstate
	cd tools ; terraform init ; terraform apply -auto-approve -var token=$(token)