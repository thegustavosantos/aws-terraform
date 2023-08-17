# aws-lambda
    AWS Lambda

# anotations
    Comandos:
        - Para executar função pela CLI: 
            1) aws lambda invoke --function-name <nome-da-funcao> <arquivo-com-saida-da-funcao.txt>
            2) aws lambda invoke --function-name first response.json
            3) aws lambda invoke --function-name first --cli-binary-format raw-in-base64-out --payload file://request.json response.json
        - 
        - 

# anotations
    Links:
        - 
        - 
        - 

    Conceitos:
        - Serverless (Sem Servidor):
            - Execução de função 
            - Responsabilidade da infraestrutura delegada, não nos preocupamos com provisionamento
            - Foco no desenvolvimento da função
        - O que é:
            - Executar código sem se preocupar com servidor ou cluster
            - Importante saber quando de memória a função está utilizando
        - Cobrança:
            - Cobrado com base no número de solicitações e duração de execução
            - Free tier: 1 milhão de solicitações gratuidas por mês e 400.000 GB/segundo
    
    Características de criação:
        - Formas de criação
            - Do zero
            - Baseado num template/esquema
            - Baseado em imagem de container para exec da função
        - Posso utilizar várias runtimes
            - Java
            - Go 
            - Python 
            - Ruby
            - .Net
        - Precisa de uma permissão 
        - O que eu posso fazer numa função:
            - Assinatura de código
            - Habilitar uma URL
            - Habilitar VPC
    
    Executando a função:
        - O retorno da função é opcional 
        - Uma das formas de testar é criando um evento que dispara a lambda
        - Sempre ao alterar a função é necessário fazer novo deploy