dev-init:
    terraform   init

dev-plan:
    terraform   plan    -var-file=./environments/dev/main.tfvars

dev-plan:
    terraform   apply   -var-file=./environments/dev/main.tfvars

prod-init:
    terraform   init

prod-plan:
    terraform   plan    -var-file=./environments/prod/main.tfvars

prod-plan:
    terraform   apply   -var-file=./environments/prod/main.tfvars