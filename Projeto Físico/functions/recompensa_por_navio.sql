CREATE OR REPLACE FUNCTION RECOMPENSA_POR_NAVIO (COD_NAVIO_PIRATA VARCHAR2) RETURN NUMBER IS
    RECOMPENSA_TOTAL NUMBER(10,2) := 0; -- Inicializa a recompensa total como zero
BEGIN
    -- Calcula a soma da recompensa dos tripulantes do navio com base no código do navio
    SELECT 
        SUM(P.RECOMPENSA) INTO RECOMPENSA_TOTAL
    FROM PIRATA P
    LEFT JOIN CAPITAO C ON C.CPF = P.CPF
    LEFT JOIN TRIPULANTE T ON P.CPF = T.CPF
    INNER JOIN NAVIO_PIRATA NP ON NP.CPF_CAPITAO = C.CPF OR NP.CODIGO = T.COD_NAVIO_P
    WHERE NP.CODIGO = COD_NAVIO_PIRATA AND P.RECOMPENSA IS NOT NULL;

    RETURN RECOMPENSA_TOTAL;
END;
/

----Executando-a
-- DECLARE
--     resultado NUMBER(10,2); -- Declara uma variável para armazenar o resultado
-- BEGIN
--     -- Chama a função e armazena o resultado na variável 'resultado'
--     resultado := RECOMPENSA_POR_NAVIO('7000');
--     -- Imprime o resultado
--     DBMS_OUTPUT.PUT_LINE('Recompensa total dos tripulantes: ' || resultado);
-- END;