-- CADASTRAR MARINHEIRO

CREATE OR REPLACE PROCEDURE CADASTRAR_MARINHEIRO (CPF_MARINHEIRO VARCHAR2, NOME_MARINHEIRO VARCHAR2, NASC_MARINHEIRO VARCHAR2, SALARIO NUMBER, COD_BASE VARCHAR2, CPF_CHEFE VARCHAR2) IS
    DATA_NASC DATE;
BEGIN
    DATA_NASC := TO_DATE(NASC_MARINHEIRO, 'dd/mm/yyyy');
    INSERT INTO MARINHEIRO VALUES (CPF_MARINHEIRO, NOME_MARINHEIRO, DATA_NASC, SALARIO, COD_BASE, CPF_CHEFE);
    DBMS_OUTPUT.PUT_LINE ('MARINHEIRO ' || NOME_MARINHEIRO || ' CADASTRADO COM ÊXITO!');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE ('ERRO! O MARINHEIRO COM CPF ' || CPF_MARINHEIRO || ' JÁ ESTÁ CADASTRADO!');
END;