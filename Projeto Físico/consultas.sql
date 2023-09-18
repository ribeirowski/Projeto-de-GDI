-------------------------
--------CONSULTAS--------
-------------------------

-- CONSULTA 1 (Group by/Having QTD DE PETS POR PIRATA, GROUP BY NOME, HAVING COUNT > 1): OK 
SELECT 
    P.NOME
  , COUNT(*) AS QTD_PETS
FROM PIRATA P, PET PE
WHERE P.CPF = PE.CPF_DONO
GROUP BY P.NOME
HAVING COUNT(*) > 1;


-- CONSULTA 2 (Junção interna NOME DO CAPITAO, NOME DO SEU NAVIO): OK 
SELECT 
    P.NOME AS CAPITAO
  , NP.NOME AS NAVIO
FROM PIRATA P
INNER JOIN NAVIO_PIRATA  NP ON CPF_CAPITAO = CPF
WHERE CPF IN (SELECT * FROM CAPITAO);

-- CONSULTA 3 (Junção externa QTD DE TERRITORIOS QUE SAO PROTEGIDOS POR UMA BASE MILITAR):OK 
SELECT 
     B.NOME
    ,COUNT(*) AS QTD_TERRITORIOS_PROTEGIDOS
FROM BASE_MILITAR B 
LEFT OUTER JOIN PROTEGE P ON B.CODIGO = P.CODIGO
GROUP BY B.NOME

-- CONSULTA 4 (Semi junção): OK 
SELECT DISTINCT 
    *
FROM MARINHEIRO M
WHERE M.CPF IN (SELECT 
    				E.CPF 
    			FROM EXPEDICAO E 
    			INNER JOIN NAVIO_MARINHA NM ON NM.CODIGO = E.COD_NAVIO 
                WHERE NM.NOME = 'PSEUDOCONHECIDOS')


-- CONSULTA 5 (Anti-junção PIRATAS QUE NUNCA FORAM CAPTURADOS): OK 
SELECT 
    P.NOME
FROM PIRATA P
WHERE P.CPF NOT IN (SELECT CPF_P FROM CAPTURA C)


-- CONSULTA 6 (Subconsulta do tipo escalar MARINHEIROS QUE POSSUEM SALARIO >= A MÉDIA SALARIAL): OK
SELECT
	NOME
FROM MARINHEIRO M
WHERE M.SALARIO >= (SELECT 
    					AVG(M.SALARIO)
    				FROM MARINHEIRO M)


-- CONSULTA 7 (Subconsulta do tipo linha CAPITAO, QTD DE PETS DELE, QTD DE TERRITORIO):
-- SELECT P.NOME, (SELECT COUNT(*) FROM PET
--                 WHERE CPF_DONO = P.CPF) AS QTD_PETS, (SELECT COUNT(*)
--                                                       FROM TERRITORIO WHERE CPF_CAPITAO = P.CPF) AS QTD_TERRITORIOS
-- FROM PIRATA P WHERE P.CPF IN (SELECT C.CPF
--                               FROM CAPITAO C
--                               WHERE C.CPF = '003');

-- SELECT
--     A.ALCUNHA
-- FROM ALCUNHA A
-- WHERE A.CPF IN (SELECT P.CPF, MAX(P.RECOMPENSA) FROM PIRATA P)



-- SELECT 
--      P.NOME
--     ,P.CPF
--     ,NP.CODIGO
-- FROM TRIPULANTE T
-- INNER JOIN PIRATA P ON P.CPF = T.CPF
-- INNER JOIN NAVIO_PIRATA NP ON NP.CODIGO = T.COD_NAVIO_P
-- WHERE (T.COD_NAVIO_P, EXTRACT(YEAR FROM P.NASCIMENTO)) = (SELECT 
--     															 T.COD_NAVIO
--     															 EXTRACT(YEAR FROM P.NASCIMENTO)
--     														   FROM TRIPULANTE T 
--                                                                INNER JOIN PIRATA P ON P.CPF = T.CPF
--     														   WHERE T.COD_NAVIO_P = '7000')


--Quantidade de expedições que o marinheiro com o maior salario participou 
select 
    COUNT(0)
from EXPEDICAO E
where E.CPF = (select
                CPF
               from (select 
                        M.CPF,
                        M.SALARIO
                     from MARINHEIRO M
                     ORDER BY SALARIO DESC)
                where rownum = 1)

--consulta os piratas que tem a mesma especie de pet e o mesmo tipo de navio que 007
SELECT 
    *
FROM PIRATA P
LEFT JOIN PET ON PET.CPF_DONO = P.CPF
LEFT JOIN NAVIO_PIRATA ON CPF_CAPITAO = P.CPF
WHERE (ESPECIE, MODELO) = (SELECT DISTINCT
                              ESPECIE
                             ,MODELO
                         FROM PIRATA P
                         LEFT JOIN PET ON PET.CPF_DONO = P.CPF
                         LEFT JOIN NAVIO_PIRATA ON CPF_CAPITAO = P.CPF
                         WHERE P.CPF IN (SELECT CPF FROM CAPITAO) AND CPF = '006')
AND P.CPF <> '006'

-- CONSULTA 8 (Subconsulta do tipo tabela ): --TIRAR ROWNUM (ELE NÃO VIU EM SALA) --TODO



-- CONSULTA 9 (Operação de conjunto): OK
SELECT
    *
FROM MARINHEIRO
EXCEPT --VIU EM SALA 
SELECT 
    *
FROM MARINHEIRO M 
WHERE M.CPF NOT IN (SELECT DISTINCT CPF FROM EXPEDICAO)