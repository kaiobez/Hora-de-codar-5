programa
{
  	real saldo = 150.00// Float]
    real valores[100]  
    cadeia descricoes[100] 
    inteiro contadorTransacoes = 0
    cadeia nome 
     
  
  funcao inicio() {
         escreva("Digite seu nome: ")
    leia(nome)
    caixa()
	}

  funcao caixa(){
    	inteiro opcao 

    escreva("\nOlá " + nome + " é um prazer ter você por aqui!\n")
	
		
    escreva("Escolha uma opção:\n")
		escreva("1. Ver saldo\n")
		escreva("2. Ver extrato\n")
		escreva("3. Fazer saque\n")
    escreva("4. Fazer depósito\n")
    escreva("5. Fazer transferencia\n")
		escreva("6. Sair\n")
    leia(opcao)

		escreva("A opção selecionada foi: " + opcao + "\n")

    se (opcao == 1) {
      inteiro senha
    escreva("informe sua senha: ")
    leia (senha)
    se (senha != 3589){
      caixa()
    }
                verSaldo()
            } senao se (opcao == 4) {
                fazerDeposito()
            } senao se (opcao == 3) {
                fazerSaque()
            } senao se (opcao == 2) {
                extrato()
            } senao se (opcao == 5) {
                fazerTranferencia()
            } senao se (opcao == 6) {
                sair()
            } senao {
                erro()
            }

  }

	funcao verSaldo(){
	    escreva("\nSeu saldo atual é: ", saldo, "\n")
      caixa()
	}
	
	funcao fazerDeposito() {

		real deposito
		
		escreva("Qual o valor para depósito? ")
		leia(deposito)

    inteiro senha
    escreva("informe sua senha: ")
    leia (senha)
    se (senha != 3589){
      fazerDeposito()
    }
		
		se (deposito <= 0){
			escreva("Por favor, informe um número válido.\n")
			fazerDeposito()
		} senao {
			saldo = saldo + deposito
       valores[contadorTransacoes] = deposito
            descricoes[contadorTransacoes] = "Depósito"
            contadorTransacoes = contadorTransacoes + 1
			verSaldo()
		}
	}
	
	funcao fazerSaque(){
	
		real saque
	
		escreva("Qual o valor para saque? ")
		leia(saque)

    inteiro senha
    escreva("informe sua senha: ")
    leia (senha)
    se (senha != 3589){
     fazerSaque()
    }
	
		se (saque <= 0){
	        escreva("Por favor, informe um número válido.\n")
	        fazerSaque()
		} senao se(saque > saldo){
      escreva("Operação não autorizada")
    }
 senao {
			saldo = saldo - saque
        valores[contadorTransacoes] = saque
        descricoes[contadorTransacoes] = "Saque"
        contadorTransacoes = contadorTransacoes + 1
			verSaldo()
		}
	}

	funcao erro() {
		escreva("Opção Inválida")
    caixa()
	}

	funcao sair(){
		escreva("Obrigao " + nome + ", foi um prazer ter você por aqui!")
	}

 funcao extrato() {
  inteiro senha
    escreva("informe sua senha: ")
    leia (senha)
    se (senha != 3589){
      extrato()
    }
        escreva("Extrato de movimentações:\nDepósito inicial: R$ 100,00\nSaque: R$ 50,00\nSaque: R$ 70,00\nSaque: R$ 30,00\nTransferência recebida: R$ 150,00")
        para (inteiro i = 0; i < contadorTransacoes; i = i + 1) {
            escreva(descricoes[i], ": ", valores[i], "\n")
        }
        escreva("Saldo atual: ", saldo, "\n")
    }

    funcao fazerTranferencia() {

		real transferencia
    inteiro conta

    escreva("\nDigite o numero da conta destino: ")
    leia(conta)
    se (conta < 0){
      escreva("Por favor, informe um número de conta válido.")
      fazerTranferencia()
    }
		
		escreva("Qual o valor para a transferencia? ")
		leia(transferencia)

    inteiro senha
    escreva("informe sua senha: ")
    leia (senha)
    se (senha != 3589){
      fazerTranferencia()
    }
		
    se(transferencia > saldo){
      escreva("Operação não autorizada!\n\n")
      caixa()
    }senao	se (transferencia <= 0){
			escreva("Por favor, informe um número válido.\n")
			fazerTranferencia()
		} senao {
			saldo = saldo - transferencia
       valores[contadorTransacoes] = transferencia
            descricoes[contadorTransacoes] = "transferencia"
            escreva("Transferência de R$", transferencia, " para a conta ", conta, " realizada com sucesso!\n")
        verSaldo()
		}
	}
}
