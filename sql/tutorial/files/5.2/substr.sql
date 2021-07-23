SELECT SUBSTRING('Hello world', 1, 4);
-- +--------------------------------+
-- | SUBSTRING('Hello world', 1, 4) |
-- +--------------------------------+
-- | Hell                           |
-- +--------------------------------+

SELECT 
    author_fname as 'f_name',
    SUBSTRING(title, 1, 10) as 'short title'
FROM books;
-- +---------+-------------+
-- | f_name  | short title |
-- +---------+-------------+
-- | Jhumpa  | The Namesa  |
-- | Neil    | Norse Myth  |
-- +---------+-------------+
