-- DOMINAR TERRITÓRIO

CREATE OR REPLACE PROCEDURE DOMINAR_TERRITORIO (QUADRANTE_TER VARCHAR2, CPF_CAP VARCHAR2) IS
    NOME_CAP VARCHAR2(100);
    NOME_TER VARCHAR2(100);
BEGIN
    SELECT P.NOME INTO NOME_CAP FROM CAPITAO C, PIRATA P WHERE P.CPF = C.CPF AND P.CPF = CPF_CAP;
    SELECT NOME INTO NOME_TER FROM TERRITORIO WHERE QUADRANTE = QUADRANTE_TER;
    UPDATE TERRITORIO SET CPF_CAPITAO = CPF_CAP WHERE CPF_CAP IN (SELECT CPF FROM CAPITAO);
    DBMS_OUTPUT.PUT_LINE ('O TERRITÓRIO ' || NOME_TER ||' FOI DOMINADO POR '|| NOME_CAP ||'!');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE ('ERRO! O TERRITÓRIO ' || QUADRANTE_TER || ' JÁ FOI DOMINADO!');
END;