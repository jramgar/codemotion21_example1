/**
 * @id cs/examples/large-blocks
 * @name Large blocks
 * @description Finds block statements containing a large statement.
 * @tags equals
 *       test
 *       boolean
 * @kind problem
 */

import csharp

from BlockStmt b
where b.getNumberOfStmts() > 25
select  b, "Refactor code to reduce the size of the statement"