-- TABELA TERRITORIO
CREATE TABLE TERRITORIO(
    QUADRANTE VARCHAR2(4),
    NOME VARCHAR2(100),
    CPF_CAPITAO VARCHAR2(11),
    CONSTRAINT PK_TERRITORIO PRIMARY KEY (QUADRANTE),
    CONSTRAINT FK_TERRITORIO_CAPITAO FOREIGN KEY (CPF_CAPITAO) REFERENCES CAPITAO
);
