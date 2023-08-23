-- 1 - Buscar o ano e o nome dos filmes
SELECT Nome, Ano FROM Filmes;

-- 2 - Buscar o nome, ano e duração dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano;

-- 3 - Buscar pelo filme "De Volta para o Futuro", trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997;

-- 5 - Buscar os filmes lançados após o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000;

-- 6 - Buscar os filmes com a duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8 - Buscar os atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores
WHERE Genero = 'M';

-- 9 - Buscar os atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero
SELECT Nome, Genero FROM Filmes
JOIN FilmesGenero
ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos
ON Generos.Id = FilmesGenero.IdGenero;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Nome, Genero FROM Filmes
JOIN FilmesGenero
ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos
ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM Filmes AS F
JOIN ElencoFilme AS EF
ON F.Id = EF.IdFilme
JOIN Atores AS A
ON A.Id = EF.IdAtor

-- Update da 12
SELECT F.Nome AS Filme, A.PrimeiroNome + ' ' + A.UltimoNome AS Elenco, EF.Papel AS Personagem FROM Filmes AS F
JOIN ElencoFilme AS EF
ON F.Id = EF.IdFilme
JOIN Atores AS A
ON A.Id = EF.IdAtor