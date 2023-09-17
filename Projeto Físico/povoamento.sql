------------------------
-------POVOAMENTO-------
------------------------

-- CADASTRO DE BASES DA MARINHA:

EXEC CADASTRAR_BASE('0001', 'CIN', '0000', '0000');
EXEC CADASTRAR_BASE('0002', 'CFCH', '1200', '0450');
EXEC CADASTRAR_BASE('0003', 'CCSA', '1107', '2376');
EXEC CADASTRAR_BASE('0004', 'CAC', '0032', '0001');
EXEC CADASTRAR_BASE('0005', 'CTG', '0879', '0120');
EXEC CADASTRAR_BASE('0006', 'CCEN', '0200', '0360');
EXEC CADASTRAR_BASE('0007', 'CB', '0090', '1990');
EXEC CADASTRAR_BASE('0008', 'CCS', '1290', '0111');
EXEC CADASTRAR_BASE('0009', 'CCM', '0000', '3300');
EXEC CADASTRAR_BASE('0010', 'CCJ', '1340', '0020');

-- CADASTRO DE MARINHEIROS:

EXEC CADASTRAR_MARINHEIRO('000', 'VIC', '13/05/2001', 50000, '0010', NULL);
EXEC CADASTRAR_MARINHEIRO('111', 'ENIO', '04/04/1978', 12000, '0001', '000');
EXEC CADASTRAR_MARINHEIRO('222', 'NEVES', '15/01/2006', 4000, '0001', '444');
EXEC CADASTRAR_MARINHEIRO('333', 'FIALHO', '31/08/1989', 2000, '0001', '000');
EXEC CADASTRAR_MARINHEIRO('444', 'AMANDA', '08/12/1979', 10000, '0007', NULL);
EXEC CADASTRAR_MARINHEIRO('555', 'LUAN', '17/10/1980', 1900, '0007', '444');
EXEC CADASTRAR_MARINHEIRO('666', 'THIAGO', '19/02/2000', 20000, '0003', '444');
EXEC CADASTRAR_MARINHEIRO('777', 'MATHEUS AUGUSTO', '01/01/1982', 3000, '0008', '444');
EXEC CADASTRAR_MARINHEIRO('888', 'JULIA', '18/11/2002', 1550, '0004', '000');
EXEC CADASTRAR_MARINHEIRO('999', 'LETICIA', '14/05/2001', 8700, '0005', '000');

-- CADASTRO DE PIRATAS:

EXEC CADASTRAR_PIRATA('001', 'LUIS', '17/10/1980', 'BACARDI', 'T', NULL);
EXEC CADASTRAR_PIRATA('002', 'JOAO VITOR', '19/02/2000', 'MONTILLA', 'T', NULL);
EXEC CADASTRAR_PIRATA('003', 'RAFAEL', '01/01/1982', 'MOUNT GAY', 'C', 7000);
EXEC CADASTRAR_PIRATA('004', 'LIGIA', '18/11/2002', 'BACARDI', 'T', NULL);
EXEC CADASTRAR_PIRATA('005', 'LUCAS', '14/05/2001', 'MONTILLA', 'T', NULL);
EXEC CADASTRAR_PIRATA('006', 'THIAGO', '25/04/2000', 'MONTILLA', 'C', 3000);
EXEC CADASTRAR_PIRATA('007', 'VICTORIA', '21/11/2002', 'BACARDI', 'T', NULL);
EXEC CADASTRAR_PIRATA('008', 'MARIANA', '08/12/1979', 'MONTILLA', 'T', NULL);
EXEC CADASTRAR_PIRATA('009', 'NATHALIA', '15/01/2006', 'BACARDI', 'T', NULL);
EXEC CADASTRAR_PIRATA('010', 'PERICLES', '31/08/1989', 'MONTILLA', 'C', 4000);

-- CADASTRO ALCUNHA

EXEC CADASTRAR_ALCUNHA('001', 'HUMILIMO');
EXEC CADASTRAR_ALCUNHA('002', 'DOUBO');
EXEC CADASTRAR_ALCUNHA('003', 'RAFA');
EXEC CADASTRAR_ALCUNHA('004', 'LILI');
EXEC CADASTRAR_ALCUNHA('004', 'LIJAO');
EXEC CADASTRAR_ALCUNHA('005', 'PAIVA');
EXEC CADASTRAR_ALCUNHA('005', 'PAIVAO');
EXEC CADASTRAR_ALCUNHA('006', 'THYGAS');
EXEC CADASTRAR_ALCUNHA('007', 'XAVIER');
EXEC CADASTRAR_ALCUNHA('007', 'VIVI');
EXEC CADASTRAR_ALCUNHA('008', 'MARI VEGANA');
EXEC CADASTRAR_ALCUNHA('009', 'NATHY');
EXEC CADASTRAR_ALCUNHA('010', 'SARDINHA');

-- CADASTRO DE NAVIOS:

EXEC CADASTRAR_NAVIO('1000', 'PSEUDOCONHECIDOS', 'PORTA AVIÕES', 220, NULL, 'M');
EXEC CADASTRAR_NAVIO('2000', 'INTERVALO BIBLICO', 'FRAGATA', 130, NULL, 'M');
EXEC CADASTRAR_NAVIO('3000', 'SILENT JAMES', 'CARAVELA', 180, '006', 'P');
EXEC CADASTRAR_NAVIO('4000', 'REVENGE OF KING SARDA', 'CARAVELA', 110, '010', 'P');
EXEC CADASTRAR_NAVIO('5000', 'YELLOW SUBMARINE', 'LANCHA DE PATRULHA', 10, NULL, 'M');
EXEC CADASTRAR_NAVIO('6000', 'TITANIC', 'NAVIO DE CARGA', 160, NULL, 'M')
EXEC CADASTRAR_NAVIO('7000', 'TU VAI CHORAR É VEIA', 'CORVETA', 200, '003', 'P');

-- CADASTRO DE TERRITORIOS:

EXEC CADASTRAR_TERRITORIO('A001', 'ILHA DE SANTO AMARO');
EXEC CADASTRAR_TERRITORIO('B001', 'ILHA DE ITAPARICA');
EXEC CADASTRAR_TERRITORIO('C001', 'ILHA DE MARÉ');
EXEC CADASTRAR_TERRITORIO('D001', 'ILHA DE TINHARÉ');
EXEC CADASTRAR_TERRITORIO('E001', 'ILHA DE BOIPEBA');
EXEC CADASTRAR_TERRITORIO('F001', 'ILHA DE SÃO PAULO');
EXEC CADASTRAR_TERRITORIO('G001', 'ILHA DE ITAMARACÁ');
EXEC CADASTRAR_TERRITORIO('H001', 'ILHA DE PÁSCOA');
EXEC CADASTRAR_TERRITORIO('J001', 'ILHA DE MALTA');
EXEC CADASTRAR_TERRITORIO('K001', 'ILHA DE SÃO VICENTE');
EXEC CADASTRAR_TERRITORIO('L001', 'ILHA DE MADAGASCAR');

-- ADOTAR PETS:

EXEC ADOTAR_PET('001', '001', 'ALFREDO', 'MACACO');
EXEC ADOTAR_PET('002', '002', 'BARTOLOMEU', 'PAPAGAIO');
EXEC ADOTAR_PET('003', '003', 'CARLOS', 'PAPAGAIO');
EXEC ADOTAR_PET('004', '004', 'LOURO JOSÉ', 'PAPAGAIO');
EXEC ADOTAR_PET('005', '005', 'MATEUS', 'CÁGADO');
EXEC ADOTAR_PET('006', '006', 'ALVIN', 'ESQUILO');
EXEC ADOTAR_PET('007', '006', 'SIMON', 'ESQUILO');
EXEC ADOTAR_PET('008', '006', 'THEODORO', 'ESQUILO');

-- DESIGNAR RECOMPENSAS:

EXEC DESIGNAR_RECOMPENSA('001', 5000);
EXEC DESIGNAR_RECOMPENSA('002', 20000);
EXEC DESIGNAR_RECOMPENSA('003', 70000);
EXEC DESIGNAR_RECOMPENSA('004', 10000);
EXEC DESIGNAR_RECOMPENSA('005', 5000);
EXEC DESIGNAR_RECOMPENSA('006', 200000);
EXEC DESIGNAR_RECOMPENSA('007', 70);

-- PROTEGER TERRITORIOS:

EXEC PROTEGER_TERRITORIO('0001', 'A001');
EXEC PROTEGER_TERRITORIO('0002', 'B001');
EXEC PROTEGER_TERRITORIO('0001', 'C001');
EXEC PROTEGER_TERRITORIO('0004', 'H001');
EXEC PROTEGER_TERRITORIO('0005', 'H001');
EXEC PROTEGER_TERRITORIO('0001', 'D001');
EXEC PROTEGER_TERRITORIO('0007', 'E001');

-- DOMINAR TERRITORIOS:

EXEC DOMINAR_TERRITORIO('H001', '003');
EXEC DOMINAR_TERRITORIO('A001', '003');
EXEC DOMINAR_TERRITORIO('H001', '003');
EXEC DOMINAR_TERRITORIO('H001', '006');
EXEC DOMINAR_TERRITORIO('C001', '006');
EXEC DOMINAR_TERRITORIO('K001', '010');
EXEC DOMINAR_TERRITORIO('L001', '003');

-- REALIZAR EXPEDICAO:

EXEC REALIZAR_EXPEDICAO('000', 'H001', '1000', '12/09/2023');
EXEC REALIZAR_EXPEDICAO('444', 'A001', '2000', '04/12/1999');
EXEC REALIZAR_EXPEDICAO('333', 'B001', '5000', '01/01/2002');
EXEC REALIZAR_EXPEDICAO('000', 'C001', '1000', '11/03/2008');
EXEC REALIZAR_EXPEDICAO('111', 'F001', '6000', '03/11/2000');
EXEC REALIZAR_EXPEDICAO('444', 'D001', '2000', '17/10/2014');

-- CAPTURAR PIRATA:

EXEC CAPTURAR_PIRATA('000', '001', 'H001', '1000', '12/09/2023');
EXEC CAPTURAR_PIRATA('444', '001', 'A001', '2000', '04/12/1999');
EXEC CAPTURAR_PIRATA('333', '002', 'B001', '5000', '01/01/2002');
EXEC CAPTURAR_PIRATA('000', '003', 'C001', '1000', '11/03/2008');
EXEC CAPTURAR_PIRATA('111', '004', 'F001', '6000', '03/11/2000');
EXEC CAPTURAR_PIRATA('777', '004', 'L001', '2000', '17/10/2014');

