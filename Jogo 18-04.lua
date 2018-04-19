require "Tabuleiro"

local function jogar()
jogadas = 0;

	print(tabuleiro:criarIndices())

repeat
		if(jogadas == 0 or jogadas % 2 ~= 1)then

			print("Digite o indice")
			indice = io.read("*number")
			print(tabuleiro:jogada("X",indice))

				if(tabuleiro:imprimirResultado("X",indice) == "O jogador X venceu!")then
					vitoriasX = vitoriasX + 1
					return;
				end

			jogadas = jogadas + 1;
		else
			print("Digite o indice")
			indice = io.read("*number")
			print(tabuleiro:jogada("O",indice))

				if(tabuleiro:imprimirResultado("O",indice) == "O jogador O venceu!")then
					vitoriasO = vitoriasO + 1
					return;
				end
				
			jogadas = jogadas + 1;
		end

	print(tabuleiro:empate(jogadas))

until(jogadas == 9)

end


repeat
		jogar()

		print("Digite 0 para jogar de novo ou qualquer outro numero para sair")
		decisao = io.read("*number")
		tabuleiro:restart()

	until(decisao ~= 0)

print(tabuleiro:mostrarResultadoFinal())

