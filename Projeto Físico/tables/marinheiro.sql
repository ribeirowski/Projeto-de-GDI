-- TABELA MARINHEIRO
CREATE TABLE MARINHEIRO(
    CPF VARCHAR2(11),
    NOME VARCHAR2(100),
    NASCIMENTO VARCHAR2(50),
    SALARIO NUMBER(10,2),
    CODIGO VARCHAR2(4) NOT NULL,
    CHEFE VARCHAR2(11),
    CONSTRAINT PK_MARINHEIRO PRIMARY KEY (CPF),
    CONSTRAINT FK_MARINHEIRO_BASE FOREIGN KEY (CODIGO) REFERENCES BASE_MILITAR,
    CONSTRAINT FK_MARINHEIRO_CAPITAO FOREIGN KEY (CHEFE) REFERENCES MARINHEIRO
);