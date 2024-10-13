-- 1
SELECT NOME, ANO FROM FILMES;

--2 (Obs: o enunciado diz: "Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano", e retorna na imagem de exemplificação, nome, ano e duracao. Ajustar imagem ou enunciado!)
SELECT NOME, ANO FROM FILMES
ORDER BY Ano;

--3
SELECT NOME, ANO, DURACAO FROM FILMES
WHERE NOME = 'De Volta para o Futuro';

--4
SELECT * FROM FILMES
WHERE ANO = 1997;

--5
SELECT * FROM FILMES
WHERE ANO > 2000;

--6
SELECT * FROM FILMES
WHERE DURACAO > 100 AND DURACAO < 150
ORDER BY DURACAO;

--7 (Obs: o enunciado diz: "Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente", e retorna na imagem de exemplificação, agrupado por ano e ordenado pela quantidade. Ajustar imagem ou enunciado!)
SELECT ANO, COUNT(*) AS QUANTIDADE FROM FILMES
GROUP BY ANO
ORDER BY QUANTIDADE DESC;

--8
SELECT * FROM ATORES
WHERE GENERO = 'M';

--9
SELECT * FROM ATORES
WHERE GENERO = 'F'
ORDER BY PRIMEIRONOME;

--10
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

--10 (Simplificado)
SELECT f.Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero r ON f.Id = r.IdFilme
INNER JOIN Generos g ON r.IdGenero = g.Id;

--11
SELECT f.Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero r ON f.Id = r.IdFilme
INNER JOIN Generos g ON r.IdGenero = g.Id
WHERE GENERO = 'Mistério';

--12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel
FROM FILMES f
INNER JOIN ElencoFilme e ON f.Id = IdFilme
INNER JOIN Atores a ON e.IdAtor = a.Id;
