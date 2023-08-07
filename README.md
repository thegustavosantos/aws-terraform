# aws-terraform
    AWS templates using terraform:
        - EC2 simple example

# anotations
    Links:
        - https://www.terraform.io/
        - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources
        - https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http


    Comandos:
        - terraform init        : inicializa a cria a pasta .terraform
        - terraform plan        : mostrar os recursos que serão criados e suas características
        - terraform apply       : realiza a aplicação do recurso conforme especificação do arquivo
        - terraform show        : mostra um foto de como está o ambiente
        - terraform destroyer   : para realizar o destryer de um recurso
            Ex.: 
                terraform destroyer -target aws_instance.dev-7 -> Para deletar um determinado recurso
                terraform destroyer -> Para deletar todos recursos


    Dicas:
        - Sequência de comandos para deploy : init, plan, apply
        - Terraform.tfstatus                : dados da última versão do recurso, quando rodamos o show é de lá que puxa os dados.
        - depends_on                        : Usado quando queremos criar dependencia entre a criação dos recursos
        - Formas de deletar um recurso      :
            - rodar comando "terraform destroyer"
            - comentar ou remover do arquivo .tf e rodar o comando "terraform apply"