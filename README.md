# CODEMOTION 2021 - No sólo clean code, también código seguro

---
## Análisis código local
### 1. Crear un WorkSpace de CodeQL
https://codeql.github.com/docs/codeql-for-visual-studio-code/setting-up-codeql-in-visual-studio-code/

Create a folder to be the new WorkSpace, clone the repository

git clone https://github.com/github/vscode-codeql-starter.git
git submodule update --init --remote 


Instalar la extensión en VS Code 
https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-codeql

Configurar el WorkSpace en VS Code

### 2. Crear una base de datos de un proyecto en local
https://codeql.github.com/docs/codeql-cli/creating-codeql-databases/

choco install codeql

codeql database create csharp-database --language=csharp --command='dotnet build /t:rebuild'

### 3. Consultas

1. Cargamos la base de datos generada en el punto anterior

2. Creamos una consulta de ejemplo en un ficher .ql y con la extensión de VS Code la ejecutams para ver resultados
```javascript

/**
 * @id large-blocks
 * @name Large blocks
 * @description Finds block statements containing a large statement.
 * @tags block
 *       statement
 */

import csharp

from BlockStmt b
where b.getNumberOfStmts() > 10
select b
```
3. Ejecutamos la consulta con la extensión
