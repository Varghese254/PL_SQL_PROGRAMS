DECLARE
  v_maria_salary NUMBER;
  v_albert_salary NUMBER;
  v_total_salary NUMBER;
BEGIN
  -- Create a savepoint before making any changes
  SAVEPOINT before_update;

  -- Get the current salaries for Maria Jacob and Albert
  SELECT ACC_BALANCE
  INTO v_maria_salary
  FROM ACCOUNTS
  WHERE ACC_NAME = 'MARIA JACOB';

  SELECT ACC_BALANCE
  INTO v_albert_salary
  FROM ACCOUNTS
  WHERE ACC_NAME = 'ALBERT';

  -- Update the salaries
  UPDATE ACCOUNTS
  SET ACC_BALANCE = ACC_BALANCE + 2000
  WHERE ACC_NAME = 'MARIA JACOB';

  UPDATE ACCOUNTS
  SET ACC_BALANCE = ACC_BALANCE + 2500
  WHERE ACC_NAME = 'ALBERT';

  -- Calculate the total salary
  SELECT SUM(ACC_BALANCE)
  INTO v_total_salary
  FROM ACCOUNTS;

  -- Check if the total salary exceeds 75000
  IF v_total_salary > 75000 THEN
    -- Roll back to the savepoint
    ROLLBACK TO before_update;
    DBMS_OUTPUT.PUT_LINE('Total salary exceeds 75000. Changes rolled back.');
  ELSE
    -- Commit the changes
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Salaries updated successfully.');
  END IF;

EXCEPTION
  WHEN OTHERS THEN
    -- Roll back to the savepoint in case of an error
    ROLLBACK TO before_update;
    DBMS_OUTPUT.PUT_LINE('An error occurred. Changes rolled back.');
END;
/
