/**
 * @id large-blocks
 * @name Large blocks
 * @description Finds block statements containing a large statement.
 * @tags readability
 *       refactor
 * @kind path-problem
 */

import csharp

from BlockStmt b
where b.getNumberOfStmts() > 25
select  b, "Refactor code to reduce the size of the statement"