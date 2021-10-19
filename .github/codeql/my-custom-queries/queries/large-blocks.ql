/**
 * @id large-blocks
 * @name Large blocks
 * @description Finds block statements containing a large statement.
 * @tags block
 *       statement
 * @problem.severity recommendation
 * @tags readability
 */

import csharp

from BlockStmt b
where b.getNumberOfStmts() > 10
select  b