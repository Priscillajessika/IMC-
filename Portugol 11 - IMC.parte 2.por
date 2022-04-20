programa
{
	
	funcao inicio()
	{
		
		inteiro joven, adulto, expert, sexo
		real peso = 0, altura = 0, idade = 0
		cadeia nome
		real imc 
		real mIdadeJm = 0, mPesoJm = 0, mAlturaJm = 0 
		real mIdadeJh = 0, mPesoJh = 0, mAlturaJh = 0 
		real mIdadeAm = 0, mPesoAm = 0, mAlturaAm = 0 
		real mIdadeAh = 0, mPesoAh = 0, mAlturaAh = 0 
		real mIdadeEm = 0, mPesoEm = 0, mAlturaEm = 0
		real mIdadeEh = 0, mPesoEh = 0, mAlturaEh = 0
		real tIdadeJm = 0, tPesoJm = 0, tAlturaJm = 0 
		real tIdadeJh = 0, tPesoJh = 0, tAlturaJh = 0 
		real tIdadeAm = 0, tPesoAm = 0, tAlturaAm = 0 
		real tIdadeAh = 0, tPesoAh = 0, tAlturaAh = 0 
		real tIdadeEm = 0, tPesoEm = 0, tAlturaEm = 0
		real tIdadeEh = 0, tPesoEh = 0, tAlturaEh = 0
		real contadorJm = 0, contadorAm = 0, contadorEm = 0
		real contadorJh = 0, contadorAh = 0, contadorEh = 0
		real contadorH = 0, contadorM = 0
		real contador = 0


		faca 
			{
			limpa()
				
			faca
			{	
			escreva("\nQuantos anos você tem: ")
			leia(idade)
			
		se 
		
			(idade<18)
			{
			 limpa()
			 escreva ("\nVocê precisa ter mais de 18 anos para preencher a pesquisa.")
			}

			}
		enquanto 
		
			(idade<18)
			
			escreva("\nQual é o seu nome: ")
			leia(nome)
			escreva("\nQual é o seu peso: ")
			leia(peso)
			escreva("\nQual é a sua altura: ")
			leia(altura)
			escreva("\nQual é o seu sexo MULHER digite 1 ou HOMEM digite 2: ")
			leia(sexo)

			imc = (altura*altura)
			imc = (peso/imc)*10000

		escolha (sexo)

		{
		caso 1: //Mulher Jovem
			
		se 	(idade >= 18 e idade <= 32)		

			{	
			escreva("\nMulher Jovem")
			escreva("\nIMC: " ,imc )
		     tIdadeJm = tIdadeJm + idade
			tPesoJm = tPesoJm + peso
			tAlturaJm = tAlturaJm + altura
			contadorJm = contadorJm + 1	
			}
			
		senao se
			(idade >= 33 e idade <=61)
			
			{	
			escreva("\nMulher Adulta")
			escreva("\nIMC: " ,imc ) 
			tIdadeAm = tIdadeAm + idade
			tPesoAm = tPesoAm + peso
			tAlturaAm = tAlturaAm + altura
			contadorAm = contadorAm + 1			
			}

		senao 
			{		
			escreva ("\nMulher expert")
			escreva("\nIMC: " ,imc ) 
			tIdadeEm = tIdadeEm + idade
			tPesoEm = tPesoEm + peso
			tAlturaEm = tAlturaEm + altura
			contadorEm = contadorEm + 1			
			}
			pare
				

		caso 2:
		
		se 			
			(idade >= 18 e idade <= 32)

			{	
			escreva("\nHomem Jovem")
			escreva("\nIMC: " ,imc ) 
			tIdadeJh = tIdadeJh + idade
			tPesoJh = tPesoJh + peso
			tAlturaJh = tAlturaJh + altura
			contadorJh = contadorJh + 1			
			}
			
		senao se
			(idade >= 33 e idade <=61)
			
			{	
			escreva("\nHomem Adulto")
			escreva("\nIMC: " ,imc ) 
			tIdadeAh = tIdadeAh + idade
			tPesoAh = tPesoAh + peso
			tAlturaAh = tAlturaAh + altura
			contadorAh = contadorAh + 1			
			}

		senao 
			{		
			escreva ("\nHomem expert")
			escreva("\nIMC: " ,imc ) 
			tIdadeEh = tIdadeEh + idade
			tPesoEh = tPesoEh + peso
			tAlturaEh = tAlturaEh + altura
			contadorEh = contadorEh + 1			
			}

		pare
		
		}

		se 			
			(imc>= 18.5 e imc <= 24.9)

			{	
			escreva("\nVocê esta com imc - ok\n")
			}
			
		senao se
			(imc >= 25)
			{	
			escreva("\nVocê esta sobrepeso\n")		
			}

		senao 
			{		
			escreva("\nSeu imc esta baixo\n")	
			}
		
		contadorM = contadorJm + contadorAm + contadorEm
		contadorH = contadorJh + contadorAh + contadorEh
		contador = contadorM + contadorH
		}						

		enquanto
		
			(contador<=2)	

	//Media de toda Mulher Jovem

	escreva("\n\nMédia de Mulheres Jovens")
	mIdadeJm = tIdadeJm/contadorJm
	mPesoJm = tPesoJm/contadorJm
	mAlturaJm = tAlturaJm/contadorJm 
	escreva("\n*Média de Idade Mulheres Jovens: " ,mIdadeJm)
	escreva("\n*Média de Peso Mulheres Jovens: " ,mPesoJm)
	escreva("\n*Média de Altura Mulheres Jovens: " ,mAlturaJm)
	escreva("\n*Média de Total Mulheres Jovens: " ,contadorJm)
		
	//Media de toda Mulher Adulta

	escreva("\n\nMédia de Mulheres Adultas")
	mIdadeAm = tIdadeAm/contadorAm
	mPesoAm = tPesoAm/contadorAm
	mAlturaAm = tAlturaAm/contadorAm 
	escreva("\n*Média de Idade Mulheres Adultas: " ,mIdadeAm)
	escreva("\n*Média de Peso Mulheres Adultas: " ,mPesoAm)
	escreva("\n*Média de Altura Mulheres Adultas: " ,mAlturaAm)
	escreva("\n*Média de Total Mulheres Adultas: " ,contadorAm)

	//Media de toda Mulher Expert

	escreva("\n\nMédia de Mulheres Expert")
	
	mIdadeEm = tIdadeEm/contadorEm
	mPesoEm = tPesoEm/contadorEm
	mAlturaEm = tAlturaEm/contadorEm 
	escreva("\n*Média de Idade Mulheres Expert: " ,mIdadeEm)
	escreva("\n*Média de Peso Mulheres Expert: " ,mPesoEm)
	escreva("\n*Média de Altura Mulheres Expert: " ,mAlturaEm)
	escreva("\n*Média de Total Mulheres Expert: " ,contadorEm)

	//Media de todo Homem Jovem
	
	escreva("\n\nMédia de Homens Jovens")
	mIdadeJh = tIdadeJh/contadorJh
	mPesoJh = tPesoJh/contadorJh
	mAlturaJh = tAlturaJh/contadorJh 
	escreva("\n*Média de Idade Homens Jovens: " ,mIdadeJh)
	escreva("\n*Média de Peso Homens Jovens: " ,mPesoJh)
	escreva("\n*Média de Altura Homens Jovens: " ,mAlturaJh)
	escreva("\n*Média de Total Homens Jovens: " ,contadorJh)
	
	//Media de todo Homem Adulto
	
	escreva("\n\nMédia de Homens Adultos")
	mIdadeAh = tIdadeAh/contadorAh
	mPesoAh = tPesoAh/contadorAh
	mAlturaAh = tAlturaAh/contadorAh 
	escreva("\n*Média de Idade Homens Adultos: " ,mIdadeAh)
	escreva("\n*Média de Peso Homens Adultos: " ,mPesoAh)
	escreva("\n*Média de Altura Homens Adultos: " ,mAlturaAh)
	escreva("\n*Média de Total homens Adultos: " ,contadorAh)

	//Media de todo Homem Expert
		
	escreva("\n\nMédia de Homens Expert")
	mIdadeEh = tIdadeEh/contadorEh
	mPesoEh = tPesoEh/contadorEh
	mAlturaEh = tAlturaEh/contadorEh 
	escreva("\n*Média de Idade Homens Expert: " ,mIdadeEh)
	escreva("\n*Média de Peso Homens Expert: " ,mPesoEh)
	escreva("\n*Média de Altura Homens Expert: " ,mAlturaEh)
	escreva("\n*Média de Total Homens Exprt: " ,contadorEh)
	
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4758; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */