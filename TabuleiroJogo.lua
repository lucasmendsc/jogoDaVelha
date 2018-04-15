tabuleiro = {{"","",""},{"","",""},{"","",""}}
require "Tabuleiro"

function tabuleiro:verificacao(valorJogada,indice)
	if(tab:jogada(valorJogada,indice) == false)then
		return "O jogador " .. valorJogada .. " venceu!"
	else
		return ""
	end
end

function tabuleiro:atualizarMatriz( valorJogada,indice )
	if(indice == 1)then
		tabuleiro[1][1] = valorJogada;
	elseif(indice == 2)then
		tabuleiro[1][2] = valorJogada;
	elseif(indice == 3)then
		tabuleiro[1][3] = valorJogada;
	elseif(indice == 4)then
		tabuleiro[2][1] = valorJogada;
	elseif(indice == 5) then
		tabuleiro[2][2] = valorJogada;
	elseif(indice == 6) then
		tabuleiro[2][3] = valorJogada;
	elseif(indice == 7)then
		tabuleiro[3][1] = valorJogada;
	elseif(indice == 8)then
		tabuleiro[3][2] = valorJogada
	else
		tabuleiro[3][3] = valorJogada;
	end
end

function tabuleiro:retorno()
	return " " .. tabuleiro[1][1] .. " " .. "|" .. " " .. tabuleiro[1][2] .. " " .. "|" .. tabuleiro[1][3] .. "\n" ..
		   "---------" ..
		   " " .. tabuleiro[2][1] .. " " .. "|" .. " " .. tabuleiro[2][2] .. " " .. "|" .. tabuleiro[2][3] .. "\n" ..
		   "---------" ..
		   " " .. tabuleiro[3][1] .. " " .. "|" .. " " .. tabuleiro[3][2] .. " " .. "|" .. tabuleiro[3][3];
end