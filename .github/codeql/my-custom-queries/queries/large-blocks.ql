/**
 * @id large-blocks
 * @name Large blocks
 * @description Finds block statements containing a large statement.
 * @tags equals
 *       test
 *       boolean
 * @kind problem
 */

import csharp

from BlockStmt b
where b.getNumberOfStmts() > 10
select  b, "My custom query example"