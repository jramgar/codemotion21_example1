/**
 * @id large-blocks
 * @name Large blocks
 * @description Finds block statements containing a large statement. >10
 * @tags block
 *       statement
 * @kind problem
 */

import csharp

from BlockStmt b
where b.getNumberOfStmts() > 10
select b