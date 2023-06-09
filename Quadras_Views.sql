-- View com informações dos alunos que pagaram a mensalidade:

CREATE OR REPLACE VIEW view_alunos_quitados AS
SELECT a.Matricula_Aluno, a.Nome_Aluno, a.Mensalidade, a.Pagamento
FROM Aluno a
WHERE a.Pagamento = 'Pago';

-- View com informações dos alunos que inadimplentes:

CREATE OR REPLACE VIEW view_alunos_inadimplentes AS
SELECT a.Matricula_Aluno, a.Nome_Aluno, a.Mensalidade, a.Pagamento
FROM Aluno a
WHERE a.Pagamento = 'Não Pago';

-- View com informações dos aluguéis de quadras e seus respectivos alunos:

CREATE OR REPLACE VIEW view_alugueis AS
SELECT al.ID_Aluguel, al.Data_Locação, al.Valor, al.Tempo, al.Data_Devolução, q.Desc_Quadra, a.Nome_Aluno
FROM Aluguel al
LEFT JOIN Quadra q ON al.ID_Quadra_Quadra = q.ID_Quadra
LEFT JOIN Aluno a ON al.ID_Aluguel = a.Matricula_Aluno;

-- View com informações dos esportes e seus respectivos professores:

CREATE OR REPLACE VIEW view_esportes_professores AS
SELECT e.ID_Esporte, e.Desc_Esporte, e.Modalidade, e.Equipes, p.Nome_Prof
FROM Esporte e
LEFT JOIN Turma t ON e.ID_Esporte = t.ID_Esporte_Esporte
LEFT JOIN Professor p ON t.Matricula_Prof_Professor = p.Matricula_Prof;


-- View com informações dos serviços realizados nas quadras:

CREATE OR REPLACE VIEW view_servicos AS
SELECT s.ID_Serviço, s.Desc_Serviço, s.Data_Serviço, s.Duração_Serviço, c.Nome_Colaborador, q.Desc_Quadra
FROM Serviço s
LEFT JOIN Colaborador c ON s.Matrícula_Colaborador_Colaborador = c.Matrícula_Colaborador
LEFT JOIN Quadra q ON s.ID_Quadra_Quadra = q.ID_Quadra;


-- View com informações da nota fiscal

CREATE OR REPLACE VIEW view_nota_fiscal AS
SELECT nf.id_nota_fiscal, nf.id_aluguel_aluguel, nf.data_locação_aluguel, a.*
FROM Nota_fiscal nf
INNER JOIN Aluno a on nf.matricula_aluno_aluno = a.matricula_aluno;
