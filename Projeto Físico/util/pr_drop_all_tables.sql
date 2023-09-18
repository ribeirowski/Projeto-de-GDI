CREATE OR REPLACE PROCEDURE pr_drop_all_tables IS
BEGIN
    -- TABELA PROTEGE
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE PROTEGE CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA CAPTURA
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE CAPTURA CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA EXPEDICAO
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE EXPEDICAO CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA TERRITORIO
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE TERRITORIO CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA PET
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE PET CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA ALCUNHA
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE ALCUNHA CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA TRIPULANTE
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE TRIPULANTE CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA NAVIO_PIRATA
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE NAVIO_PIRATA CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA CAPITAO
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE CAPITAO CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA PIRATA
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE PIRATA CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA NAVIO_MARINHA
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE NAVIO_MARINHA CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA MARINHEIRO
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE MARINHEIRO CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA BASE_MILITAR
    BEGIN
        EXECUTE IMMEDIATE 'DROP TABLE BASE_MILITAR CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;
END;
/
