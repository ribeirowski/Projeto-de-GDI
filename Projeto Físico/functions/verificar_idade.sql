CREATE OR REPLACE FUNCTION CALCULAR_IDADE(CPF_P VARCHAR2) RETURN NUMBER IS
    IDADE NUMBER;
    DATA_NASCIMENTO DATE;
BEGIN
    -- Converte a data de nascimento de VARCHAR2 para DATE
    SELECT TO_DATE(NASCIMENTO, 'dd-Mon-yy') INTO DATA_NASCIMENTO
    FROM PIRATA
    WHERE CPF = CPF_P;

    -- Calcula a idade com base na data de nascimento
    IDADE := TRUNC(MONTHS_BETWEEN(SYSDATE, DATA_NASCIMENTO) / 12);

    -- Torna a idade positiva se for negativa
    IF IDADE < 0 THEN
        IDADE := IDADE * (-1);
    END IF;

    RETURN IDADE;
END;
/

-- --eXECUNTANDO
-- DECLARE
--     idade NUMBER;
-- BEGIN
--     idade := CALCULAR_IDADE('006');
--     DBMS_OUTPUT.PUT_LINE('Idade do pirata: ' || idade || ' anos');
-- END;