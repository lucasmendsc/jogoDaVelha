tabuleiro = {{"","",""},{"","",""},{"","",""}}
vitoriasO = 0
vitoriasX = 0

function tabuleiro:imprimirResultado(valorJogada,indice)
	if(tabuleiro:verificarVitoria(valorJogada,indice))then
		return "O jogador " .. valorJogada .. " venceu!";
	else
		return ""
	end
end

function tabuleiro:verificarVitoria(valorJogada,indice)
	if(indice == 1)then
		retorno = tabuleiro:checaLinhaUm(valorJogada,indice)

			if(retorno ~= true)then
				retorno = tabuleiro:checaColunaUm(valorJogada,indice)
			end

			if(retorno ~= true)then
				retorno = tabuleiro:checaDiagonalNoroeste(valorJogada,indice)
			end
		return retorno

	elseif(indice == 2)then
		retorno = tabuleiro:checaLinhaDois(valorJogada,indice)
			if(retorno ~= true)then
				retorno = tabuleiro:checaColunaDois(valorJogada,indice)
			end
		return retorno

	elseif(indice == 3)then
		retorno = tabuleiro:checaLinhaUm(valorJogada,indice)
			if(retorno ~= true)then
				retorno = tabuleiro:checaColunaTres(valorJogada,indice)
			end

			if(retorno ~= true)then
				retorno = tabuleiro:checaDiagonalNordeste(valorJogada,indice)
			end
		return retorno

	elseif(indice == 4)then
		retorno = tabuleiro:checaLinhaDois(valorJogada,indice)
			if(retorno ~= true)then
				retorno = tabuleiro:checaColunaUm(valorJogada,indice)
			end
		return retorno

	elseif(indice == 5)then
		retorno = tabuleiro:checaLinhaDois(valorJogada,indice)
			if(retorno ~= true)then
				retorno = tabuleiro:checaColunaDois(valorJogada,indice)
			end

			if(retorno ~= true)then
				retorno = tabuleiro:checaDiagonalNordeste(valorJogada,indice)
			end

			if(retorno ~= true)then
				retorno = tabuleiro:checaDiagonalNoroeste(valorJogada,indice)
			end
		return retorno

	elseif(indice == 6)then
	 retorno = tabuleiro:checaLinhaDois(valorJogada,indice)
			if(retorno ~= true)then
				retorno = tabuleiro:checaColunaTres(valorJogada,indice)
			end
		return retorno

	elseif(indice == 7)then
		 retorno = tabuleiro:checaLinhaTres(valorJogada,indice)
			if(retorno ~= true)then
				retorno = tabuleiro:checaColunaUm(valorJogada,indice)
			end

			if(retorno ~= true)then
				retorno = tabuleiro:checaDiagonalNordeste(valorJogada,indice)
			end
		return retorno


	elseif(indice == 8)then
		retorno = tabuleiro:checaLinhaTres(valorJogada,indice)
			if(retorno ~= true)then
				retorno = tabuleiro:checaColunaDois(valorJogada,indice)
			end
		return retorno

	elseif(indice == 9)then
		retorno = tabuleiro:checaLinhaTres(valorJogada,indice)
			if(retorno ~= true)then
				retorno = tabuleiro:checaColunaTres(valorJogada,indice)
			end

			if(retorno ~= true)then
				retorno = tabuleiro:checaDiagonalNoroeste(valorJogada,indice)
			end
		return retorno
	end
end

function tabuleiro:jogada(valorJogada,indice)
	if(indice == 1 and tabuleiro[1][1] == "")then
		tabuleiro[1][1] = valorJogada

		return tabuleiro:retorno() .. "\n"
				.. tabuleiro:imprimirResultado(valorJogada,indice);

	elseif(indice == 2 and tabuleiro[1][2] == "")then
		tabuleiro[1][2] = valorJogada

			return tabuleiro:retorno() .. "\n"
				.. tabuleiro:imprimirResultado(valorJogada,indice);

	elseif(indice == 3 and tabuleiro[1][3] == "")then
		tabuleiro[1][3] = valorJogada

			return tabuleiro:retorno() .. "\n"
				.. tabuleiro:imprimirResultado(valorJogada,indice);

	elseif(indice == 4 and tabuleiro[2][1] == "")then
		tabuleiro[2][1] = valorJogada
			return tabuleiro:retorno() .. "\n"
				.. tabuleiro:imprimirResultado(valorJogada,indice);

	elseif(indice == 5 and tabuleiro[2][2] == "")then
		tabuleiro[2][2] = valorJogada
				return tabuleiro:retorno() .. "\n"
				.. tabuleiro:imprimirResultado(valorJogada,indice);

	elseif(indice == 6 and tabuleiro[2][3] == "")then
		tabuleiro[2][3] = valorJogada
				return tabuleiro:retorno() .. "\n"
				.. tabuleiro:imprimirResultado(valorJogada,indice);

	elseif(indice == 7 and tabuleiro[3][1] == "")then
		tabuleiro[3][1] = valorJogada
				return tabuleiro:retorno() .. "\n"
				.. tabuleiro:imprimirResultado(valorJogada,indice);

	elseif(indice == 8 and tabuleiro[3][2] == "")then
		tabuleiro[3][2] = valorJogada
				return tabuleiro:retorno() .. "\n"
				.. tabuleiro:imprimirResultado(valorJogada,indice);

	elseif(indice == 9 and tabuleiro[3][3] == "")then
		tabuleiro[3][3] = valorJogada
			return tabuleiro:retorno() .. "\n"
				.. tabuleiro:imprimirResultado(valorJogada,indice);
	elseif(indice == 0) then
		return tabuleiro:retorno()
	else
		return "indice inexistente ou ja ocupado!"
	end
end

function tabuleiro:checaLinhaUm(valorJogada,indice)
	if(tabuleiro[1][1] == valorJogada
		and tabuleiro[1][1] == tabuleiro[1][2]
			and tabuleiro[1][2] == tabuleiro[1][3])then
			return true
		else
		return false
	end
end

function tabuleiro:checaColunaUm(valorJogada,indice)
	if(tabuleiro[1][1] == valorJogada
		and tabuleiro[1][1] == tabuleiro[2][1]
			and tabuleiro[2][1] == tabuleiro[3][1])then
			return true
		else
			return false
	end
end

function tabuleiro:checaLinhaDois(valorJogada,indice)
	if(tabuleiro[2][1] == valorJogada
		and tabuleiro[2][1] == tabuleiro[2][2]
			and tabuleiro[2][2] == tabuleiro[2][3])then
			return true
		else
			return false
	end
end

function tabuleiro:checaColunaDois(valorJogada,indice)
	if(tabuleiro[1][2] == valorJogada
		and tabuleiro[1][2] == tabuleiro[2][2]
			and tabuleiro[2][2] == tabuleiro [3][2])then
			return true
		else
			return false
	end
end

function tabuleiro:checaLinhaTres(valorJogada,indice)
	if(tabuleiro[3][1] == valorJogada
		and tabuleiro[3][1] == tabuleiro[3][2]
			and tabuleiro[3][2] == tabuleiro[3][3])then
			return true
		else
			return false
	end
end

function tabuleiro:checaColunaTres(valorJogada,indice)
	if(tabuleiro[1][3] == valorJogada
		and tabuleiro[1][3] == tabuleiro[2][3]
			and tabuleiro[1][3] == tabuleiro[3][3])then
			return true
		else
			return false
	end
end

function tabuleiro:checaDiagonalNordeste(valorJogada,indice)
	if(tabuleiro[3][1] == valorJogada
		and tabuleiro[3][1] == tabuleiro[2][2]
			and tabuleiro[2][2] == tabuleiro[1][3])then
			return true
		else
			return false
	end
end

function tabuleiro:checaDiagonalNoroeste(valorJogada,indice)
	if(tabuleiro[1][1] == valorJogada
		and tabuleiro[1][1] == tabuleiro[2][2]
			and tabuleiro[2][2] == tabuleiro[3][3])then
			return true
		else
			return false
	end
end

function tabuleiro:retorno()
	return " " .. tabuleiro[1][1] .. " " .. "|" .. " " .. tabuleiro[1][2] .. " " .. "|" .. " " .. tabuleiro[1][3] .. "\n" ..
		   "----------" .. "\n" ..
		   " " .. tabuleiro[2][1] .. " " .. "|" .. " " .. tabuleiro[2][2] .. " " .. "|" .. " " .. tabuleiro[2][3] .. "\n" ..
		   "----------" .. "\n" ..
		   " " .. tabuleiro[3][1] .. " " .. "|" .. " " .. tabuleiro[3][2] .. " " .. "|" .. " " .. tabuleiro[3][3];
end

function tabuleiro:criarIndices()
return	" 1 | 2 | 3 " .. "\n" ..
		"-----------" .. "\n" ..
		" 4 | 5 | 6 " .. "\n" ..
		"-----------" .. "\n" ..
		" 7 | 8 | 9 "
end

function tabuleiro:restart()
	for i=1,3 do
		for j=1,3 do
			tabuleiro[i][j] = "";
		end
	end
end

function tabuleiro:verificarValor(jogada)
	if (type(jogada) ~= "number" )then
		return false
	else
		return true
	end
end

function tabuleiro:mostrarResultadoFinal()
	if(vitoriasX > vitoriasO)then
		return "O jogador 'O' obteve " .. vitoriasO .. " vitorias" .. "\n"
				.. "E o jogador 'X' obteve " .. vitoriasX .. " vitorias" .. "\n"
				.. "O jogador 'X' venceu!"

	elseif(vitoriasX < vitoriasO)then
		return "O jogador 'X' obteve " .. vitoriasX .. " vitorias" .. "\n"
				.. "E o jogador 'O' obteve " .. vitoriasO .. " vitorias" .. "\n"
				.. "O jogador 'O' venceu!"

	else
		return "O jogador 'X' obteve " .. vitoriasX .. " vitorias" .. "\n"
				.. "E o jogador 'O' obteve " .. vitoriasO .. " vitorias" .. "\n"
				.. "O jogo empatou!"
	end
end

function tabuleiro:empate(jogadas)
	if(jogadas == 9)then
		vitoriasX = vitoriasX + 1
		vitoriasO = vitoriasO + 1
		return "Empate!"
	end
end
