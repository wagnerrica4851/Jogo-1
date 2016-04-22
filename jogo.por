programa
{
     inclua biblioteca Graficos --> g
	inclua biblioteca Teclado --> t
	inclua biblioteca Util --> u
	
     // imagens do cenario 
	inteiro cenario
	// imagens do personagem 
	inteiro perS  , persAT, persAT2, imagem = 0
	// posoção do personagem 
	inteiro perS_x=5, perS_y=470
	// variavel da função de ataque
	logico atacando = falso
	// imagens dos adiversarios
	inteiro adv1 
	// posição dos adiversarios
     inteiro adv_x=800, adv_y=470
     
   
     //carregar imagesn de fundo e personagem 
	funcao inicio()
	{
	      g.iniciar_modo_grafico(verdadeiro)
		 g.definir_dimensoes_janela(1280, 720)
		 cenario = g.carregar_imagem("imagens/fundo1.png")
		 perS    = g.carregar_imagem("imagens/perS.png")
		 persAT  = g.carregar_imagem("imagens/atk2.png")
		 persAT2 = g.carregar_imagem("imagens/atk1.png")
		 adv1    = g.carregar_imagem("imagens/adv1.png")
		 			 

            // lopp de funçoes 
		  faca {	
		  		 	
			 desenhar()
			 desenharAdvs()
			 gravidade()	
			 movimenta()
			 movimentaTeclas()
			 g.renderizar()
			 			  	
		 }enquanto (nao t.tecla_pressionada(t.TECLA_ESC))
	}
     // desenhar imagens das teclas de ataque e cenario
     funcao desenhar(){
     	
     	g.desenhar_imagem(0, 0, cenario)

     	se(nao(atacando)) {
     		g.desenhar_imagem(perS_x, perS_y, perS)     		
     	} senao{
     		g.desenhar_imagem(perS_x, perS_y, imagem)
			atacando = falso
     	}
     }    
     // movimenta personagem
	funcao movimenta() {
		
		se(t.tecla_pressionada(t.TECLA_SETA_DIREITA) e perS_x<1165) {
			perS_x+=7
			escreva(perS_x + "\n")  
			
		}
	              
		se(t.tecla_pressionada(t.TECLA_SETA_ESQUERDA) e perS_x>0 ){
			perS_x-=7
			escreva(perS_x + "\n")
		}

		se(t.tecla_pressionada(t.TECLA_SETA_ACIMA) e perS_y>20){
			perS_y -=18
			escreva(perS_y + "\n")
		}  
	  }
	   
       // comando de ataque
	 funcao movimentaTeclas(){
	 	
	   	se (t.tecla_pressionada(t.TECLA_C)){    
			imagem = persAT
			atacando = verdadeiro
		}

	 	se (t.tecla_pressionada(t.TECLA_V)){
			imagem = persAT2
			atacando = verdadeiro
		}
	   }
	   
       funcao gravidade()    {
	     se(perS_y < 470) {   
			perS_y+=10
		  }
	   }

        
	   funcao desenharAdvs (){
	   	g.desenhar_imagem(adv_x, adv_y, adv1)
	      
	   }

	   
	   	
	  
}   


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2170; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */