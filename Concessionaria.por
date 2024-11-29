algoritmo "ConcessionariaMickeias"
var
    senha, login, opcao, opcaocarro: inteiro
    nome, end, cor, forma_de_pagamento, produto, tel, quant: caractere

// Função inicial
funcao iniciar()
    escreval("CONCESSIONÁRIA MICKEIAS")
    espere(2) // Aguarda 2 segundos
    limpa_tela()
fimfuncao

// Função para validação de senha
funcao entrar()
    senha <- 123

    escreval("Digite a senha: ")
    leia(login)
    enquanto (login <> senha)
        escreval("ERRO DE SENHA")
        espere(1) // Aguarda 1 segundo
        limpa_tela()
        escreval("Digite a senha novamente: ")
        leia(login)
    fimenquanto
    escreval("SENHA CORRETA")
    espere(1) // Aguarda 1 segundo
    limpa_tela()
fimfuncao

// Função para cadastro de cliente
funcao cadastrar()
    escreval("CADASTRO DO CLIENTE")

    escreval("Nome completo: ")
    leia(nome)

    escreval("Telefone: ")
    leia(tel)

    escreval("Endereço: ")
    leia(end)

    limpa_tela()
    escreval("Nome: ", nome)
    escreval("Telefone: ", tel)
    escreval("Endereço: ", end)
    espere(1)
    limpa_tela()
fimfuncao

// Função para compra de carro
funcao compra_de_carro()
    escreval("Escolha o carro:")
    escreval("1 - Sedan")
    escreval("2 - SUV")
    escreval("3 - Hatch")
    escreval("Digite a opção: ")
    leia(opcaocarro)
    enquanto opcaocarro > 3 ou opcaocarro < 1
        escreval("Opção inválida! Tente novamente.")
        espere(1) // Aguarda 1 segundo
        limpa_tela()
        escreval("Escolha o carro:")
        escreval("1 - Sedan")
        escreval("2 - SUV")
        escreval("3 - Hatch")
        escreval("Digite a opção: ")
        leia(opcaocarro)
    fimenquanto

    escreva("Digite a cor do carro: ")
    leia(cor)
    escreva("Escolha a forma de pagamento (à vista/financiado): ")
    leia(forma_de_pagamento)
    limpa_tela()
    escreval("Dados da compra do carro:")
    escreva("Carro escolhido: ")
    escolha opcaocarro
        caso 1: escreval("Sedan")
        caso 2: escreval("SUV")
        caso 3: escreval("Hatch")
        outrocaso: escreval("Opção inválida!")
    fimescolha
    escreval("Cor: ", cor)
    escreval("Forma de pagamento: ", forma_de_pagamento)
    espere(1)
    limpa_tela()
fimfuncao

// Função para compra de acessório
funcao compra_de_acessorio()
    escreval("VENDA DE ACESSÓRIO")
    espere(1) // Aguarda 1 segundo
    escreva("Produto: ")
    leia(produto)
    escreva("Quantidade: ")
    leia(quant)
    limpa_tela()
    escreval("Produto: ", produto)
    escreval("Quantidade: ", quant)
    espere(1)
    limpa_tela()
fimfuncao

// Função principal
funcao inicio()
    iniciar()
    entrar()
    repita
        escreval("\nMENU PRINCIPAL")
        escreval("1 - Cadastro cliente")
        escreval("2 - Compra de carro")
        escreval("3 - Compra de acessório")
        escreval("4 - Fechar programa")
        escreva("Escolha uma opção: ")
        leia(opcao)

        escolha opcao
            caso 1:
                limpa_tela()
                cadastrar()
            caso 2:
                limpa_tela()
                compra_de_carro()
            caso 3:
                limpa_tela()
                compra_de_acessorio()
            caso 4:
                limpa_tela()
                escreval("PROGRAMA FINALIZADO!")
                espere(1) // Aguarda 1 segundo
                limpa_tela()
            outrocaso:
                limpa_tela()
                escreval("Opção inválida! Tente novamente.")
        fimescolha
    ate opcao = 4
fimfuncao

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 38; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */