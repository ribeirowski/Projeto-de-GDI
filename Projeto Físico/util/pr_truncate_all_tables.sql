CREATE OR REPLACE PROCEDURE pr_TRUNCATE_all_tables IS
BEGIN
    -- TABELA PROTEGE
    BEGIN
        EXECUTE IMMEDIATE 'TRUNCATE TABLE PROTEGE CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA CAPTURA
    BEGIN
        EXECUTE IMMEDIATE 'TRUNCATE TABLE CAPTURA CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA EXPEDICAO
    BEGIN
        EXECUTE IMMEDIATE 'TRUNCATE TABLE EXPEDICAO CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA TERRITORIO
    BEGIN
        EXECUTE IMMEDIATE 'TRUNCATE TABLE TERRITORIO CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA PET
    BEGIN
        EXECUTE IMMEDIATE 'TRUNCATE TABLE PET CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA ALCUNHA
    BEGIN
        EXECUTE IMMEDIATE 'TRUNCATE TABLE ALCUNHA CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA TRIPULANTE
    BEGIN
        EXECUTE IMMEDIATE 'TRUNCATE TABLE TRIPULANTE CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA NAVIO_PIRATA
    BEGIN
        EXECUTE IMMEDIATE 'TRUNCATE TABLE NAVIO_PIRATA CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA CAPITAO
    BEGIN
        EXECUTE IMMEDIATE 'TRUNCATE TABLE CAPITAO CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA PIRATA
    BEGIN
        EXECUTE IMMEDIATE 'TRUNCATE TABLE PIRATA CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA NAVIO_MARINHA
    BEGIN
        EXECUTE IMMEDIATE 'TRUNCATE TABLE NAVIO_MARINHA CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA MARINHEIRO
    BEGIN
        EXECUTE IMMEDIATE 'TRUNCATE TABLE MARINHEIRO CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;

    -- TABELA BASE_MILITAR
    BEGIN
        EXECUTE IMMEDIATE 'TRUNCATE TABLE BASE_MILITAR CASCADE CONSTRAINTS';
    EXCEPTION
        WHEN OTHERS THEN
            NULL; -- Ignora o erro se a tabela não existir
    END;
END;
/
