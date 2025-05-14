--1 - Busar nome e ano dos filmes
SELECT Nome, Ano FROM dbo.Filmes;

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM dbo.Filmes ORDER BY Ano ASC;

--3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT * FROM dbo.Filmes WHERE Nome LIKE '%De Volta para o Futuro%';

-- 4 Buscar os filmes lançados em 1997
SELECT Nome FROM dbo.Filmes WHERE ano = 1997;

-- 5 Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano FROM dbo.Filmes WHERE ano > 2000 ORDER BY ano DESC;

-- 6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM dbo.Filmes WHERE Duracao BETWEEN 101 AND 149 ORDER BY Duracao ASC; 

-- 7 Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade FROM dbo.Filmes GROUP BY Ano ORDER BY Quantidade DESC;

-- 8 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome FROM dbo.Atores WHERE Genero = 'M';

-- 9 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM dbo.Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

--10 Buscar o nome do filme e o gênero
SELECT F.Nome, G.Genero FROM dbo.FilmesGenero FG
INNER JOIN dbo.Filmes F ON F.id = FG.IdFilme
INNER JOIN dbo.Generos G ON G.id = FG.IdGenero;

-- 11 Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome, G.Genero FROM dbo.FilmesGenero FG
INNER JOIN dbo.Filmes F ON F.id = FG.IdFilme
INNER JOIN dbo.Generos G ON G.id = FG.IdGenero
WHERE G.Genero = 'Mistério';

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM dbo.ElencoFilme EF
INNER JOIN dbo.Filmes F ON F.id = EF.IdFilme
INNER JOIN dbo.Atores A ON A.id = EF.IdAtor;