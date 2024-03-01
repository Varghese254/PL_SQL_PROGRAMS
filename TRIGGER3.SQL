CREATE OR REPLACE trigger Securetable BEFORE delete or insert
or update
ON employees
BEGIN
IF (TO_CHAR(SYSDATE,'day') IN ('sat','sun')) OR
(TO_CHAR(SYSDATE,'hh:mi')NOT BETWEEN '08:30' AND '18:30')
THEN
RAISE_APPLICATION_ERROR(-20500,'table is secured');
END IF;
END;
/