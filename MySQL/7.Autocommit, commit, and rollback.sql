USE user_directory;

-- what if I accidently delete table without adding where clause?
-- AUTOCOMMIT, COMMIT, and ROLLBACK

## First trunoff autocommit
SET AUTOCOMMIT = OFF;
## for save changes
COMMIT;

DELETE FROM users;

## to undo last step
ROLLBACK;

SELECT *
FROM users;