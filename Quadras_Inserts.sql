/*Tipo_Quadra	ID_Tipo integer NOT NULL,
				Desc_Tipo_Quadra varchar(100)*/
INSERT INTO Tipo_Quadra (ID_Tipo, Desc_Tipo_Quadra) VALUES (1, 'Quadra de tenis');
INSERT INTO Tipo_Quadra (ID_Tipo, Desc_Tipo_Quadra) VALUES (2, 'Quadra de futebol');
INSERT INTO Tipo_Quadra (ID_Tipo, Desc_Tipo_Quadra) VALUES (3, 'Quadra de basquete');
INSERT INTO Tipo_Quadra (ID_Tipo, Desc_Tipo_Quadra) VALUES (4, 'Quadra de poliesportiva');

/*Quadra 	ID_Quadra integer NOT NULL,
			Desc_Quadra varchar(100),
			Comprimento numeric(4,2) NOT NULL,
			Largura numeric(4,2) NOT NULL,
			ID_Tipo_Tipo_Quadra integer*/
INSERT INTO Quadra (ID_Quadra, Desc_Quadra, Comprimento, Largura, ID_Tipo_Tipo_Quadra) VALUES (1, 'Quadra 1', 23.77, 08.23, 1);
INSERT INTO Quadra (ID_Quadra, Desc_Quadra, Comprimento, Largura, ID_Tipo_Tipo_Quadra) VALUES (2, 'Quadra 2', 23.77, 08.23, 1);
INSERT INTO Quadra (ID_Quadra, Desc_Quadra, Comprimento, Largura, ID_Tipo_Tipo_Quadra) VALUES (3, 'Quadra 3', 90.00, 45.00, 2);
INSERT INTO Quadra (ID_Quadra, Desc_Quadra, Comprimento, Largura, ID_Tipo_Tipo_Quadra) VALUES (4, 'Quadra 4', 28.00, 15.00, 3);
INSERT INTO Quadra (ID_Quadra, Desc_Quadra, Comprimento, Largura, ID_Tipo_Tipo_Quadra) VALUES (5, 'Quadra 5', 27.00, 16.00, 4);

/*Professor	Matricula_Prof integer NOT NULL,
			Nome_Prof varchar(100) NOT NULL,
			Salário_Prof decimal(6,2) NOT NULL*/
INSERT INTO Professor (Matricula_Prof, Nome_Prof, Salário_Prof) VALUES (1, 'Galahad', 2640.00);
INSERT INTO Professor (Matricula_Prof, Nome_Prof, Salário_Prof) VALUES (2, 'Lancelot', 3300.00);
INSERT INTO Professor (Matricula_Prof, Nome_Prof, Salário_Prof) VALUES (3, 'Percival', 1700.00);
INSERT INTO Professor (Matricula_Prof, Nome_Prof, Salário_Prof) VALUES (4, 'Joanna', 3300.00);
INSERT INTO Professor (Matricula_Prof, Nome_Prof, Salário_Prof) VALUES (5, 'Quitéria', 3960.00);

/*Esporte	ID_Esporte integer NOT NULL,
			Desc_Esporte varchar(100) NOT NULL,
			Modalidade varchar(100) NOT NULL,
			Equipes integer NOT NULL*/
INSERT INTO Esporte (ID_Esporte, Desc_Esporte, Modalidade, Equipes) VALUES (1, 'Tenis', 'Solo', 2);
INSERT INTO Esporte (ID_Esporte, Desc_Esporte, Modalidade, Equipes) VALUES (2, 'Futebol', 'Campo', 2);
INSERT INTO Esporte (ID_Esporte, Desc_Esporte, Modalidade, Equipes) VALUES (3, 'Basquete', 'Indoor', 2);

/*Aluno		Matricula_Aluno integer NOT NULL,
			Nome_Aluno varchar(100) NOT NULL,
			Mensalidade decimal(6,2) NOT NULL,
			Data_pagamento date NOT NULL,
			Pagamento varchar(4)*/
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (1, 'José', 800.32, '2023-05-12', NULL);
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (2, 'Pedro', 300.56, '2023-04-02', 'Pago');
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (3, 'Maria', 568.99, '2023-05-15', NULL);
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (4, 'Jacira', 600.75, '2023-04-23', 'Pago');
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (5, 'Jack', 1059.51, '2023-05-02', NULL);
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (1, 'José', 800.32, '2023-05-12', NULL);
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (2, 'Pedro', 300.56, '2023-04-02', 'Pago');
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (3, 'Maria', 568.99, '2023-05-15', NULL);
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (4, 'Jacira', 600.75, '2023-04-23', 'Pago');
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (5, 'Jack', 1059.51, '2023-05-02', NULL);
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (1, 'José', 800.32, '2023-05-12', NULL);
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (2, 'Pedro', 300.56, '2023-04-02', 'Pago');
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (3, 'Maria', 568.99, '2023-05-15', NULL);
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (4, 'Jacira', 600.75, '2023-04-23', 'Pago');
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (5, 'Jack', 1059.51, '2023-05-02', NULL);
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (1, 'José', 800.32, '2023-05-12', NULL);
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (2, 'Pedro', 300.56, '2023-04-02', 'Pago');
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (3, 'Maria', 568.99, '2023-05-15', NULL);
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (4, 'Jacira', 600.75, '2023-04-23', 'Pago');
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (5, 'Jack', 1059.51, '2023-05-02', NULL);
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (1, 'José', 800.32, '2023-05-12', NULL);
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (2, 'Pedro', 300.56, '2023-04-02', 'Pago');
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (3, 'Maria', 568.99, '2023-05-15', NULL);
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (4, 'Jacira', 600.75, '2023-04-23', 'Pago');
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (5, 'Jack', 1059.51, '2023-05-02', NULL);
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (1, 'José', 800.32, '2023-05-12', NULL);
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (2, 'Pedro', 300.56, '2023-04-02', 'Pago');
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (3, 'Maria', 568.99, '2023-05-15', NULL);
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (4, 'Jacira', 600.75, '2023-04-23', 'Pago');
INSERT INTO Aluno (Matricula_Aluno, Nome_Aluno, Mensalidade, Data_pagamento, Pagamento) VALUES (5, 'Jack', 1059.51, '2023-05-02', NULL);

/*Aluguel	ID_Aluguel integer NOT NULL,
			Data_Locação timestamp NOT NULL,
	  		Valor decimal(6,2) NOT NULL,
	  		Tempo integer NOT NULL,
	  		Data_Devolução date NOT NULL,
	  		ID_Quadra_Quadra integer*/
INSERT INTO Aluguel (ID_Aluguel, Data_Locação, Valor, Tempo, Data_Devolução, ID_Quadra_Quadra) VALUES (1, '2023-04-26 13:59:12', 256.00, 2, '2023-05-26', 1);
INSERT INTO Aluguel (ID_Aluguel, Data_Locação, Valor, Tempo, Data_Devolução, ID_Quadra_Quadra) VALUES (2, '2023-04-27 09:22:52', 128.00, 1, '2023-05-27', 3);
INSERT INTO Aluguel (ID_Aluguel, Data_Locação, Valor, Tempo, Data_Devolução, ID_Quadra_Quadra) VALUES (3, '2023-04-12 15:16:33', 384.00, 3, '2023-05-12', 1);

/*Turma ID_Turma integer NOT NULL,
		ID_Quadra_Quadra integer,
		Matricula_Prof_Professor integer,
		ID_Esporte_Esporte integer,
		Matricula_Aluno_Aluno integer*/
INSERT INTO Turma (ID_Turma, ID_Quadra_Quadra, Matricula_Prof_Professor, ID_Esporte_Esporte, Matricula_Aluno_Aluno) VALUES (1, 2, 3, 2, 1);
INSERT INTO Turma (ID_Turma, ID_Quadra_Quadra, Matricula_Prof_Professor, ID_Esporte_Esporte, Matricula_Aluno_Aluno) VALUES (2, 3, 1, 3, 3);
INSERT INTO Turma (ID_Turma, ID_Quadra_Quadra, Matricula_Prof_Professor, ID_Esporte_Esporte, Matricula_Aluno_Aluno) VALUES (3, 1, 2, 1, 4);

/*Colaborador	Matrícula_Colaborador integer NOT NULL,
				Nome_Colaborador varchar(100) NOT NULL,
				Salário_Colaborador decimal(6,2) NOT NULL*/
INSERT INTO Colaborador (Matrícula_Colaborador, Nome_Colaborador, Salário_Colaborador) VALUES (1, 'Josias', 1320.00);
INSERT INTO Colaborador (Matrícula_Colaborador, Nome_Colaborador, Salário_Colaborador) VALUES (2, 'Cléber', 1680.00);
INSERT INTO Colaborador (Matrícula_Colaborador, Nome_Colaborador, Salário_Colaborador) VALUES (3, 'Márcio', 2500.00);
INSERT INTO Colaborador (Matrícula_Colaborador, Nome_Colaborador, Salário_Colaborador) VALUES (4, 'Juliana', 3200.00);
INSERT INTO Colaborador (Matrícula_Colaborador, Nome_Colaborador, Salário_Colaborador) VALUES (5, 'Marcelo', 6600.00);

/*Serviço	ID_Serviço integer NOT NULL,
			Desc_Serviço varchar(100),
			Data_Serviço date,
			Duração_Serviço time,
			Matrícula_Colaborador_Colaborador integer,
			ID_Quadra_Quadra integer*/
INSERT INTO Serviço (ID_Serviço, Desc_Serviço, Data_Serviço, Duração_Serviço, Matrícula_Colaborador_Colaborador, ID_Quadra_Quadra) VALUES (1, 'Limpeza', '2023-04-26', '2:00', 1, 1);
INSERT INTO Serviço (ID_Serviço, Desc_Serviço, Data_Serviço, Duração_Serviço, Matrícula_Colaborador_Colaborador, ID_Quadra_Quadra) VALUES (2, 'Aparar Grama', '2023-04-26', '4:00', 2, 3);
INSERT INTO Serviço (ID_Serviço, Desc_Serviço, Data_Serviço, Duração_Serviço, Matrícula_Colaborador_Colaborador, ID_Quadra_Quadra) VALUES (3, 'Limpeza', '2023-04-26', '2:00', 1, 4);

/*Nota_Fiscal	ID_Nota_Fiscal integer NOT NULL,
	    		ID_Aluguel_Aluguel integer,
	    		Data_Locação_Aluguel timestamp,
	    		Matricula_Aluno_Aluno integer*/
INSERT INTO Nota_Fiscal (ID_Nota_Fiscal, ID_Aluguel_Aluguel, Data_Locação_Aluguel, Matricula_Aluno_Aluno) VALUES (1, 1, '2023-04-26 13:59:12', 1);
INSERT INTO Nota_Fiscal (ID_Nota_Fiscal, ID_Aluguel_Aluguel, Data_Locação_Aluguel, Matricula_Aluno_Aluno) VALUES (2, 2, '2023-04-27 09:22:52', 3);
INSERT INTO Nota_Fiscal (ID_Nota_Fiscal, ID_Aluguel_Aluguel, Data_Locação_Aluguel, Matricula_Aluno_Aluno) VALUES (3, 3, '2023-04-12 15:16:33', 4);
