programa
{

	cadeia nome
	inteiro op
	real varSaldo = 150.0
	
	funcao inicio()
	{

		escreva("Informe seu nome: ")
		leia(nome)
		escreva("Olá ", nome, " é um prazer ter você por aqui.\n\n")
		choice()

		
	}
	
	funcao choice(){
		
		escreva(	"Menu principal - Escolha a opção desejada:\n" +
				"1. Ver Saldo\n"+
				"2. Ver Extrato\n"+
				"3. Fazer saque\n"+
				"4. Fazer depósito\n"+
				"5. Transferência\n"+
				"6. Sair\n")
		leia(op)

		escolha(op){
			caso 1:
				saldo()
				pare

			caso 2:
				extrato()
				pare
				
			caso 3:
				saque()
				pare

			caso 4:
				deposito()
				pare

			caso 5:
				transferencia()
				pare

			caso 6: 
				escreva("Encerrando programa...")
				pare
		}
		
	}

	funcao saldo(){
		escreva("Seu saldo atual é: " +varSaldo, "\n\n")
		choice()
	}

	funcao extrato(){
		escreva(	"| Data       | Descrição              | Débito (R$)  | Crédito (R$)  | Saldo (R$)  |\n"+
				"| ---------- | ---------------------- | ------------ | ------------- | ----------- |\n"+
				"| 01/08/2025 | Saldo Anterior         |              |               | 500,00      |\n"+
				"| 03/08/2025 | Compra Supermercado    | 200,00       |               | 300,00      |\n"+
				"| 05/08/2025 | Depósito Salário       |              | 400,00        | 700,00      |\n"+
				"| 10/08/2025 | Pagamento Conta Luz    | 100,00       |               | 600,00      |\n"+
				"| 15/08/2025 | Saque ATM              | 300,00       |               | 300,00      |\n"+
				"| 20/08/2025 | Transferência Recebida |              | 50,00         | 350,00      |\n"+
				"| 21/08/2025 | Pagamento Cartão       | 200,00       |               | 150,00      |\n")
		choice()
	}

	funcao saque(){
		escreva("Seu saldo atual é: " +varSaldo, "\n")
		real din
		escreva("Quanto você deseja sacar?\n")
		leia(din)

		se(din > varSaldo){
			escreva("ERRO: Valor insuficiente! Tente novamente: ")
			leia(din)
		} senao {
			varSaldo = varSaldo - din
			saldo()
		}

	}

	funcao deposito(){
		escreva("Seu saldo atual é: " +varSaldo, "\n")
		real din
		escreva("Quanto você deseja depositar?\n")
		leia(din)

		varSaldo = varSaldo + din
		saldo()
		
	}

	funcao transferencia(){
		cadeia nomeTrans
		inteiro pix
		real din
		escreva("Para quem deseja transferir?\n")
		leia(nomeTrans)
		escreva("Pix: ")
		leia(pix)
		escreva("Quanto você deseja transferir?\n")
		leia(din)
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 190; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */