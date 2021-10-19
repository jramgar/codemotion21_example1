/**
 * @id cs/examples/eq-true
 * @name Equality test on Boolean
 * @description Finds tests like 'x==true', 'x==false', 'x!=true', '!=false'.
 * @tags equals
 *       test
 *       boolean
 * @kind problem
 */

import csharp

from BlockStmt b
where b.getNumberOfStmts() > 10
select  b, "My custom query example"