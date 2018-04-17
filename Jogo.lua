require "Tabuleiro"

print(tabuleiro:mostrarIndices())
	verifica = false
	jogadas = 0;

	repeat

		if(jogadas == 0 or jogadas % 2 ~= 1)then
			print("Digite o indice")
			indice = io.read("*number")
			print(tabuleiro:jogada("X",indice))
			jogadas = jogadas + 1;
		else
			print("Digite o indice")
			indice = io.read("*number")
			print(tabuleiro:jogada("O",indice))
			jogadas = jogadas + 1;
		end

		if(jogadas == 9)then
			verifica = true
		end

	until(verifica)

print("LiL")
