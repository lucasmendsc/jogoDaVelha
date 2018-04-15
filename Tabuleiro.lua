require("Jogador")

tab = {{"","",""},{"","",""},{"","",""}}

jogadas = 0

function tab:jogada(valorJogada,indice)
	if(jogadas < 9)then
		jogadas = jogadas + 1;
		if(indice == 1)then
			return self:jogadaIndiceUm(valorJogada)
		elseif(indice == 2)then
			return self:jogadaIndiceDois(valorJogada)
		elseif(indice == 3)then
			return self:jogadaIndiceTres(valorJogada)
		elseif(indice == 4)then
			return self:jogadaIndiceQuatro(valorJogada)
		elseif(indice == 5)then
			return self:jogadaIndiceCinco(valorJogada)
		elseif(indice == 6)then
			return self:jogadaIndiceSeis(valorJogada)
		elseif(indice == 7)then
			return self:jogadaIndiceSete(valorJogada)
		elseif(indice == 8)then
			return self:jogadaIndiceOito(valorJogada)
		elseif(indice == 9)then
			return self:jogadaIndiceNove(valorJogada)
		else
			return "Indice inválido! Jogue novamente";
		end
	end
end

function tab:criarTabuleiro()
	return " 1 | 2 | 3 " .. "\n" ..
		   "-----------" .. "\n" ..
		   " 4 | 5 | 6 " .. "\n" ..
		   "-----------" .. "\n" ..
		   " 7 | 8 | 9 "
	end


function tab:jogadaIndiceUm(valorJogada)
	retorno = tabuleiro:checaLinhaUm(valorJogada)
	if(retorno)then
		retorno = tabuleiro:checaColunaUm(valorJogada)
	end

	if(retorno)then
		retorno = tabuleiro:checaDiagonalNoroeste(valorJogada)
	end

	return retorno
end


function tab:jogadaIndiceDois(valorJogada)
	retorno = tabuleiro:checaLinhaDois(valorJogada)
	if(retorno)then
		retorno = tabuleiro:checaColunaDois(valorJogada)
	end
	return retorno
end


function tab:jogadaIndiceTres(valorJogada)
	retorno = tabuleiro:checaLinhaTres(valorJogada)
	if(retorno)then
		retorno = tabuleiro:checaColunaTres(valorJogada)
	end

	if(retorno)then
		retorno = tabuleiro:checaDiagonalNordeste(valorJogada)
	end

	return retorno
end

function tab:jogadaIndiceQuatro(valorJogada)
	retorno = tabuleiro:checaLinhaDois(valorJogada)
	if(retorno)then
		retorno = tabuleiro:checaColunaUm(valorJogada)
	end
	return retorno
end

function tab:jogadaIndiceCinco(valorJogada)
	retorno = tabuleiro:checaLinhaDois(valorJogada)
	if(retorno)then
		retorno = tabuleiro:checaColunaDois(valorJogada)
	end

	if(retorno)then
		retorno = tabuleiro:checaDiagonalNordeste(valorJogada)
	end

	if(retorno)then
		retorno = tabuleiro:checaDiagonalNordeste(valorJogada)
	end

	return retorno
end

function tab:jogadaIndiceSeis(valorJogada)
	retorno = tabuleiro:checaLinhaDois(valorJogada)

	if(retorno)then
		retorno = tabuleiro:checaColunaTres(valorJogada)
	end

	return retorno

end

function tab:jogadaIndiceSete(ValorJogada)
	retorno = tabuleiro:checaLinhaTres(valorJogada)

	if(retorno)then
		retorno = tabuleiro:checaColunaUm(valorJogada)
	end

	if(retorno)then
		retorno = tabuleiro:checaDiagonalNordeste(valorJogada)
	end

	return retorno

end

function tab:jogadaIndiceOito(ValorJogada)
	retorno = tabuleiro:checaLinhaTres(valorJogada)

	if(retorno)then
		retorno = tabuleiro:checaColunaDois(valorJogada)
	end

	return retorno

end

function tab:jogadaIndiceNove(ValorJogada)
	retorno = tabuleiro:checaLinhaTres(valorJogada)

	if(retorno)then
		retorno = tabuleiro:checaColunaTres(valorJogada)
	end

	if(retorno)then
		retorno = tabuleiro:checaDiagonalNoroeste(valorJogada)
	end

	return retorno

end