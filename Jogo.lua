require "JogadorX"
require "JogadorO"
require "TabuleiroJogo"
require "Tabuleiro"

jogador

print("Digite 1 para 'O' ou 2 para 'X'")
decisao = io.read("*number")

if(decisao = 1)then
	jogador = JogadorO
else
	jogador = JogadorX
end

	repeat
		print(tab:criarTabuleiro())

		until(tabuleiro:verificacao(valorJogada,indice))