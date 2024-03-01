CREATE OR REPLACE TRIGGER Audit_Trigger BEFORE INSERT OR UPDATE
OR DELETE
ON Employees
FOR EACH ROW
DECLARE
v_action VARCHAR2(10);
BEGIN
IF INSERTING THEN
v_action := 'insert';
INSERT INTO AuditEmployee (eno, ename, esal, job, action,
audit_date) VALUES (:new.eno, :new.ename, :new.esal, :new.job,
v_action, SYSDATE);
ELSIF UPDATING THEN
v_action := 'update';
INSERT INTO AuditEmployee (eno, ename, esal, job, action,
audit_date) VALUES (:OLD.eno, :OLD.ename, :OLD.esal, :OLD.job,
v_action, SYSDATE);
ELSIF DELETING THEN
v_action := 'delete';
INSERT INTO AuditEmployee (eno, ename, esal, job, action,
audit_date)VALUES (:OLD.eno, :OLD.ename, :OLD.esal, :OLD.job,
v_action, SYSDATE);
END IF;
END;
/