require("Tabuleiro")

function tabuleiro:checaLinhaUm(valorJogada)
	if(tabuleiro[1][2] == tabuleiro[2][2]
		and tabuleiro[3][2] == valorJogada)then
		return false
	end
	return true
end

function tabuleiro:checaColunaUm(valorJogada)
	if(tabuleiro[1][1] == tabuleiro[2][1]
		and tabuleiro[3][1] == valorJogada)then
	return false
	end
	return true
end

function tabuleiro:checaColunaDois(valorJogada)
	if(tabuleiro[1][2] == tabuleiro[2][2]
		and tabuleiro[3][2] == valorJogada)then
		return false
	end
	return true
end

function tabuleiro:checaColunaTres(valorJogada)
	if(tabuleiro[1][3] == tabuleiro[2][3]
		and tabuleiro[3][3] == valorJogada)then
		return false
	end
	return true
end

function tabuleiro:checaLinhaDois(valorJogada)
	if(tabuleiro[2][1] == tabuleiro[2][2]
		and tabuleiro[2][3] == valorJogada)then
		return false
	end
	return true
end

function tabuleiro:checaLinhaTres(valorJogada)
if(tabuleiro[3][1] == tabuleiro[3][2]
		and tabuleiro[3][3] == valorJogada)then
		return false
	end
	return true
end

function tabuleiro:checaDiagonalNoroeste(valorJogada)
	if(tabuleiro[1][1] == tabuleiro[2][2]
		and tabuleiro[3][3] == valorJogada)then
		return false
	end
	return true
end

function tabuleiro:checaDiagonalNordeste(valorJogada)
	if(tabuleiro[3][1] == tabuleiro[2][2]
		and tabuleiro[1][3] == valorJogada)then
		return false
	end
	return true
end