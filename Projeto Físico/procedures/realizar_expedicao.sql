-- REALIZAR EXPEDIÇÃO

CREATE OR REPLACE PROCEDURE REALIZAR_EXPEDICAO (CPF_MAR VARCHAR2, QUADRANTE_TER VARCHAR2, COD_NAVIO VARCHAR2,  DATA_EXPEDICAO VARCHAR2) IS
    DATA_EXP DATE;

BEGIN
    DATA_EXP := TO_DATE(DATA_EXPEDICAO, 'dd/mm/yyyy');
    INSERT INTO EXPEDICAO VALUES (CPF_MAR, QUADRANTE_TER, COD_NAVIO, DATA_EXP);
    DBMS_OUTPUT.PUT_LINE ('EXPEDIÇÃO REALIZADA COM ÊXITO EM ' || DATA_EXP || ' !');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE ('ERRO! ESSA EXPEDIÇÃO JÁ FOI REALIZADA!');
END;