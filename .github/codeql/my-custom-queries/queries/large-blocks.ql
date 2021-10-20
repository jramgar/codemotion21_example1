/**
 * @id cs/examples/large-blocks
 * @name Large blocks
 * @description Finds block statements containing a large statement.
 * @tags refactor
 *       readability
 * @kind problem
 */

import csharp

from BlockStmt b
where b.getNumberOfStmts() > 20
select  b, "Refactor code to reduce the size of the statement"