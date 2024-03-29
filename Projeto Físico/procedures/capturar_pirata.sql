-- CAPTURAR PIRATA
-- IMPLEMENTAR CONDIÇÃO DE QUE SÓ PODE CAPTURAR PIRATA SE O O MARINHEIRO E O PIRATA ESTIVEREM NO MESMO QUADRANTE

CREATE OR REPLACE PROCEDURE CAPTURAR_PIRATA (CPF_M VARCHAR2, CPF_P VARCHAR2, QUADRANTE VARCHAR2, COD_NAVIO VARCHAR2, DT VARCHAR2) IS
    DATA_CAP DATE;
BEGIN
    DATA_CAP := TO_DATE(DT, 'dd/mm/yyyy');
    INSERT INTO CAPTURA VALUES (CPF_P, CPF_M, QUADRANTE, COD_NAVIO, DATA_CAP);
    DBMS_OUTPUT.PUT_LINE ('PIRATA CAPTURADO COM ÊXITO!');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE ('ERRO! O PIRATA COM CPF ' || CPF_P || ' JÁ FOI CAPTURADO!');
END;