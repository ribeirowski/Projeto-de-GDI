-------------------------
---------CRIAÇÃO---------
-------------------------

-- TABELA BASE_MILITAR
CREATE TABLE BASE_MILITAR(
    CODIGO VARCHAR2(4),
    NOME VARCHAR2(100),
    COORDENADA_LATITUDE VARCHAR2(12),
    COORDENADA_LONGITUDE VARCHAR2(13),
    CONSTRAINT PK_BASE_MILITAR PRIMARY KEY (CODIGO)
);

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

-- TABELA NAVIO_MARINHA
CREATE TABLE NAVIO_MARINHA(
    CODIGO VARCHAR2(4),
    NOME VARCHAR2(100),
    MODELO VARCHAR2(100),
    CAPACIDADE NUMBER(4),
    CONSTRAINT PK_NAVIO_MARINHA PRIMARY KEY (CODIGO)
);

CREATE TABLE PIRATA( 
    CPF VARCHAR2(11), 
    NOME VARCHAR2(100), 
    NASCIMENTO VARCHAR2(50), 
    RECOMPENSA NUMBER(10,2), 
    RUM_FAVORITO VARCHAR2(100),
    CONSTRAINT PK_PIRATA PRIMARY KEY (CPF)
);

-- TABELA CAPITAO
CREATE TABLE CAPITAO(
    CPF VARCHAR2(11),
    CONSTRAINT PK_CAPITAO_PIRATA PRIMARY KEY (CPF),
    CONSTRAINT FK_CAPITAO FOREIGN KEY (CPF) REFERENCES PIRATA
);

-- TABELA NAVIO_PIRATA
CREATE TABLE NAVIO_PIRATA(
    CODIGO VARCHAR2(4),
    NOME VARCHAR2(100),
    MODELO VARCHAR2(100),
    CAPACIDADE NUMBER(4),
    CPF_CAPITAO VARCHAR2(11) UNIQUE NOT NULL,
    CONSTRAINT PK_NAVIO_PIRATA PRIMARY KEY (CODIGO),
    CONSTRAINT FK_NAVIO_PIRATA_CAPITAO FOREIGN KEY (CPF_CAPITAO) REFERENCES CAPITAO
);

-- TABELA TRIPULANTE
CREATE TABLE TRIPULANTE(
    CPF VARCHAR2(11),
    COD_NAVIO_P VARCHAR2(4),
    CONSTRAINT PK_TRIPULANTE PRIMARY KEY (CPF),
    CONSTRAINT FK_TRIPULANTE_PIRATA FOREIGN KEY (CPF) REFERENCES PIRATA,
    CONSTRAINT FK_TRIPULANTE_NAVIO FOREIGN KEY (COD_NAVIO_P) REFERENCES NAVIO_PIRATA
);

-- TABELA ALCUNHA
CREATE TABLE ALCUNHA(
    CPF VARCHAR2(11),
    ALCUNHA VARCHAR2(100),
    CONSTRAINT PK_ALCUNHA PRIMARY KEY (CPF, ALCUNHA),
    CONSTRAINT FK_ALCUNHA_PIRATA FOREIGN KEY (CPF) REFERENCES PIRATA
);

-- TABELA PET
CREATE TABLE PET(
    CODIGO VARCHAR2(4),
    CPF_DONO VARCHAR2(11),
    NOME VARCHAR2(100),
    ESPECIE VARCHAR2(100),
    CONSTRAINT PK_PET PRIMARY KEY (CPF_DONO, CODIGO),
    CONSTRAINT FK_PET FOREIGN KEY (CPF_DONO) REFERENCES PIRATA
);

-- TABELA TERRITORIO
CREATE TABLE TERRITORIO(
    QUADRANTE VARCHAR2(4),
    NOME VARCHAR2(100),
    CPF_CAPITAO VARCHAR2(11),
    CONSTRAINT PK_TERRITORIO PRIMARY KEY (QUADRANTE),
    CONSTRAINT FK_TERRITORIO_CAPITAO FOREIGN KEY (CPF_CAPITAO) REFERENCES CAPITAO
);

-- TABELA EXPEDIÇÃO
CREATE TABLE EXPEDICAO(
    CPF VARCHAR2(11),
    QUADRANTE VARCHAR2(4),
    COD_NAVIO VARCHAR2(4),
    DATA_EXPEDICAO VARCHAR2(50),
    CONSTRAINT PK_EXPEDICAO PRIMARY KEY (CPF, QUADRANTE, COD_NAVIO, DATA_EXPEDICAO),
    CONSTRAINT FK_EXPEDICAO_CPF FOREIGN KEY (CPF) REFERENCES MARINHEIRO,
    CONSTRAINT FK_EXPEDICAO_QUADRANTE FOREIGN KEY (QUADRANTE) REFERENCES TERRITORIO,
    CONSTRAINT FK_EXPEDICAO_NAVIO FOREIGN KEY (COD_NAVIO) REFERENCES NAVIO_MARINHA
);

-- TABELA CAPTURA
CREATE TABLE CAPTURA(
    CPF_P VARCHAR2(11),
    CPF_M VARCHAR2(11),
    QUADRANTE VARCHAR2(4),
    COD_NAVIO VARCHAR2(4),
    DATA_CAPTURA VARCHAR2(50),
    CONSTRAINT PK_CAPTURA PRIMARY KEY (CPF_P, CPF_M, QUADRANTE, COD_NAVIO, DATA_CAPTURA),
    CONSTRAINT FK_CAPTURA_PIRATA FOREIGN KEY (CPF_P) REFERENCES PIRATA,
    CONSTRAINT FK_CAPTURA_MARINHEIRO FOREIGN KEY (CPF_M) REFERENCES MARINHEIRO,
    CONSTRAINT FK_CAPTURA_QUADRANTE FOREIGN KEY (QUADRANTE) REFERENCES TERRITORIO,
    CONSTRAINT FK_CAPTURA_NAVIO FOREIGN KEY (COD_NAVIO) REFERENCES NAVIO_MARINHA
);

-- TABELA PROTEGE
CREATE TABLE PROTEGE(
    CODIGO VARCHAR2(4),
    QUADRANTE VARCHAR2(4),
    CONSTRAINT PK_PROTEGE PRIMARY KEY (CODIGO, QUADRANTE),
    CONSTRAINT FK_BASE FOREIGN KEY (CODIGO) REFERENCES BASE_MILITAR,
    CONSTRAINT FK_TERRITORIO FOREIGN KEY (QUADRANTE) REFERENCES TERRITORIO
);