CREATE OR REPLACE PROCEDURE CADASTRA_TRIPULACAO(CPF_T VARCHAR2, COD_NAVIO_PIRATA VARCHAR2) IS
    NOME_TEMP VARCHAR2(100);
BEGIN
    -- Verifica se o CPF pertence a um tripulante
    SELECT P.NOME INTO NOME_TEMP
    FROM TRIPULANTE T
    INNER JOIN PIRATA P ON P.CPF = T.CPF
    WHERE T.CPF = CPF_T;

    -- Verifica se o código do navio existe
    DECLARE
        NAVIO_EXISTE NUMBER;
    BEGIN
        SELECT COUNT(*) INTO NAVIO_EXISTE
        FROM NAVIO_PIRATA
        WHERE CODIGO = COD_NAVIO_PIRATA;

        IF NAVIO_EXISTE = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Código de navio inválido!');
            RETURN; -- Sai da procedure se o código do navio for inválido
        END IF;
    END;

    IF NOME_TEMP IS NOT NULL THEN 
        -- Atualiza o código do navio do tripulante
        UPDATE TRIPULANTE
        SET COD_NAVIO_P = COD_NAVIO_PIRATA
        WHERE CPF = CPF_T;
        DBMS_OUTPUT.PUT_LINE('O PIRATA ' || NOME_TEMP || ' entrou para a tripulação do navio ' || COD_NAVIO_PIRATA); 
    ELSE 
        DBMS_OUTPUT.PUT_LINE('CPF não é de tripulante ou não existe, impossível entrar para a tripulação!'); 
    END IF;

END;