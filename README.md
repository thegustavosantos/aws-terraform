# aws-terraform
    AWS templates using terraform:
        - EC2 simple example

# anotations
    Links:
        - https://www.terraform.io/
        - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources
        - https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http


    Comandos:
        - terraform init    : inicializa a cria a pasta .terraform
        - terraform plan    : mostrar os recursos que serão criados e suas características
        - terraform apply   : realiza a aplicação do recurso conforme especificação do arquivo
        - terraform show    : mostra um foto de como está o ambiente

    Dicas:
        - Sequência de comandos para deploy : init, plan, apply
        - Terraform.tfstatus                : dados da última versão do recurso, quando rodamos o show é de lá que puxa os dados.