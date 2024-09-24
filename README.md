Este projeto é um exemplo simples de um sistema CRUD (Create, Read, Update, Delete) implementado em Shell Script para manipulação de arquivos em um sistema Unix. O objetivo é demonstrar o uso do paradigma imperativo na linguagem Unix Shell Script.

1. Descrição
O projeto apresenta um menu interativo no terminal que permite ao usuário realizar as seguintes operações:

Ler o conteúdo de um arquivo.
Adicionar texto a um arquivo.
Remover um arquivo.
Listar arquivos no diretório atual.

2. Como funciona?
Ao executar o script, o menu é exibido com cinco opções para o usuário:

- Ler um arquivo existente.
- Escrever conteúdo em um arquivo.
- Remover um arquivo.
- Listar os arquivos do diretório.
- Sair do programa.
- O script permanece em loop até que a opção de sair seja selecionada.

3. Pré-requisitos
Para rodar este script, você precisa de um sistema Unix/Linux com um shell compatível, como Bash.

4. Como usar
Passo 1: Clonar o repositório
`git clone <url-do-repositorio>`
Passo 2: Dar permissão de execução ao script
`chmod +x exemplo.sh`
Passo 3: Executar o script
`./exemplo.sh`
Passo 4: Interagir com o menu
Siga as instruções no terminal para ler, escrever ou deletar arquivos.

5. Estrutura do código
O script é organizado em funções para cada operação de CRUD:

- menu: Exibe o menu principal e coleta a opção do usuário.
- ler_arquivo: Lê e exibe o conteúdo de um arquivo usando o comando cat.
- escrever_arquivo: Adiciona texto a um arquivo usando echo.
- remover_arquivo: Remove um arquivo com rm.
- listar_arquivos: Lista os arquivos no diretório atual com ls.