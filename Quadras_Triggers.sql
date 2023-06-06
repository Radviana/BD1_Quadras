-- Trigger para atualizar a tabela "Turma" quando uma linha é excluída na tabela "Quadra":

CREATE OR REPLACE FUNCTION trigger_delete_quadra()
RETURNS TRIGGER AS $$
BEGIN
    DELETE FROM public.Turma WHERE ID_Quadra_Quadra = OLD.ID_Quadra;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trigger_delete_quadra
AFTER DELETE ON public.Quadra
FOR EACH ROW
EXECUTE FUNCTION trigger_delete_quadra();


-- Trigger para atualizar a tabela "Turma" quando uma linha é excluída na tabela "Professor":

CREATE OR REPLACE FUNCTION trigger_delete_professor()
RETURNS TRIGGER AS $$
BEGIN
    DELETE FROM public.Turma WHERE Matricula_Prof_Professor = OLD.Matricula_Prof;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trigger_delete_professor
AFTER DELETE ON public.Professor
FOR EACH ROW
EXECUTE FUNCTION trigger_delete_professor();


-- Trigger para atualizar a tabela "Turma" quando uma linha é excluída na tabela "Esporte":

CREATE OR REPLACE FUNCTION trigger_delete_esporte()
RETURNS TRIGGER AS $$
BEGIN
    DELETE FROM public.Turma WHERE ID_Esporte_Esporte = OLD.ID_Esporte;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trigger_delete_esporte
AFTER DELETE ON public.Esporte
FOR EACH ROW
EXECUTE FUNCTION trigger_delete_esporte();


-- Trigger para atualizar a tabela "Aluguel" quando uma linha é excluída na tabela "Quadra":

CREATE OR REPLACE FUNCTION trigger_delete_aluguel_quadra()
RETURNS TRIGGER AS $$
BEGIN
    DELETE FROM public.Aluguel WHERE ID_Quadra_Quadra = OLD.ID_Quadra_Quadra;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trigger_delete_aluguel_quadra
AFTER DELETE ON public.Quadra
FOR EACH ROW
EXECUTE FUNCTION trigger_delete_aluguel_quadra();


-- Trigger para atualizar a tabela "Turma" quando uma linha é excluída na tabela "Aluno":

CREATE OR REPLACE FUNCTION trigger_delete_aluno()
RETURNS TRIGGER AS $$
BEGIN
    DELETE FROM public.Turma WHERE Matricula_Aluno_Aluno = OLD.Matricula_Aluno;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_delete_aluno
AFTER DELETE ON public.Aluno
FOR EACH ROW
EXECUTE FUNCTION trigger_delete_aluno();

-- Trigger para atualizar a tabela "Aluno" quando a data de pagamento passa da data atual e Pagamento é diferente de 'Pago'

CREATE OR REPLACE FUNCTION trigger_alterar_status_inadimplente()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.Pagamento <> 'Pago' AND NEW.data_pagamento < current_date THEN
        NEW.Pagamento := 'Inadimplente';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trigger_alterar_status_inadimplente
BEFORE INSERT OR UPDATE ON public.Aluno
FOR EACH ROW
EXECUTE FUNCTION trigger_alterar_status_inadimplente();
