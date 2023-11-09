SELECT *
FROM filmes

1 - Buscar o nome e ano dos filmes
SELECT nome, ano
FROM filmes

2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT * FROM filmes
ORDER BY ano ASC

3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT nome, ano, duracao
FROM filmes
WHERE nome = 'De Volta para o Futuro'

4 - Buscar os filmes lançados em 1997
SELECT nome, ano, duracao
FROM filmes
WHERE ano = 1997

5 - Buscar os filmes lançados APÓS o ano 2000
SELECT nome, ano, duracao
FROM filmes
WHERE ano > 2000

6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT nome, ano, duracao
FROM filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY ano ASC

7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ano, COUNT(*) AS quantidade_de_filmes
FROM filmes
GROUP BY ano
ORDER BY quantidade_de_filmes DESC

8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M'

9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT PrimeiroNome, UltimoNome, Genero
FROM atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome


10 - Buscar o nome do filme e o gênero

SELECT [FIL].Nome
  ,[GEN].Genero
  FROM [dbo].[FilmesGenero] AS FG
  INNER JOiN [dbo].[Filmes] AS FIL
  ON FIL.Id = FG.IdFilme
  INNER JOiN [dbo].[Generos] AS GEN
  ON GEN.Id = FG.IdGenero


11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT [FIL].Nome
  ,[GEN].Genero
  FROM [dbo].[FilmesGenero] AS FG
  INNER JOiN [dbo].[Filmes] AS FIL
  ON FIL.Id = FG.IdFilme
  INNER JOiN [dbo].[Generos] AS GEN
  ON GEN.Id = FG.IdGenero
  WHERE [GEN].Genero = 'Mistério'

12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT [FIL].Nome
	,[ATO].PrimeiroNome
	,[ATO].UltimoNome
	,[EF].Papel
  FROM [dbo].[ElencoFilme] AS EF
  INNER JOiN [dbo].[Filmes] AS FIL
  ON FIL.Id = EF.IdFilme
  INNER JOiN [dbo].[Atores] AS ATO
  ON ATO.Id = EF.IdAtor