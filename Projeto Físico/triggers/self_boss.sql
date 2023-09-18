CREATE OR REPLACE TRIGGER VERIFY_SELF_BOSS
BEFORE INSERT OR UPDATE ON MARINHEIRO
FOR EACH ROW 
BEGIN
    IF :NEW.CHEFE = :NEW.CPF THEN
        RAISE_APPLICATION_ERROR(-20001, 'CPF DO CHEFE NÃO PODE SER DO PRÓPRIO MARINHEIRO');
    END IF;
END;