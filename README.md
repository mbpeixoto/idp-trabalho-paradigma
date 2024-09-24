Este projeto é um exemplo simples de um sistema CRUD (Create, Read, Update, Delete) implementado em Shell Script para manipulação de arquivos em um sistema Unix. O objetivo é demonstrar o uso do paradigma imperativo na linguagem Unix Shell Script.

1. Descrição
O projeto apresenta um menu interativo no terminal que permite ao usuário realizar as seguintes operações:

Ler o conteúdo de um arquivo.
Adicionar texto a um arquivo.
Remover um arquivo.
Listar arquivos no diretório atual.
2. Como funciona?
Ao executar o script, o menu é exibido com cinco opções para o usuário:

Ler um arquivo existente.
Escrever conteúdo em um arquivo.
Remover um arquivo.
Listar os arquivos do diretório.
Sair do programa.
O script permanece em loop até que a opção de sair seja selecionada.

3. Pré-requisitos
Para rodar este script, você precisa de um sistema Unix/Linux com um shell compatível, como Bash.

4. Como usar
Passo 1: Clonar o repositório
bash
Copiar código
git clone <url-do-repositorio>
Passo 2: Dar permissão de execução ao script
bash
Copiar código
chmod +x exemplo.sh
Passo 3: Executar o script
bash
Copiar código
./exemplo.sh
Passo 4: Interagir com o menu
Siga as instruções no terminal para ler, escrever ou deletar arquivos.
5. Estrutura do código
O script é organizado em funções para cada operação de CRUD:

menu: Exibe o menu principal e coleta a opção do usuário.
ler_arquivo: Lê e exibe o conteúdo de um arquivo usando o comando cat.
escrever_arquivo: Adiciona texto a um arquivo usando echo.
remover_arquivo: Remove um arquivo com rm.
listar_arquivos: Lista os arquivos no diretório atual com ls.
6. Exemplo de uso
1. Ler um arquivo
Ao escolher a opção 1, o usuário pode digitar o nome de um arquivo. Se o arquivo existir, seu conteúdo será exibido:

bash
Copiar código
Digite o nome do arquivo a ser lido: exemplo.txt
2. Escrever em um arquivo
Ao escolher a opção 2, o usuário pode adicionar texto a um arquivo. O conteúdo será anexado ao final do arquivo:

bash
Copiar código
Digite o nome do arquivo a ser escrito: exemplo.txt
Digite o texto para adicionar: Adicionando nova linha ao arquivo.
3. Remover um arquivo
Ao escolher a opção 3, o usuário pode remover um arquivo existente:

bash
Copiar código
Digite o nome do arquivo a ser removido: exemplo.txt
4. Listar arquivos no diretório
Ao escolher a opção 4, o script exibirá uma lista dos arquivos presentes no diretório atual:

bash
Copiar código
Arquivos no diretório atual:
-rw-r--r-- 1 user user 1024 Sep 23 12:00 exemplo.txt
7. Observações
Caso o arquivo não exista, uma mensagem de erro será exibida.
O script não cria novos arquivos automaticamente, apenas os modifica ou remove se já existirem.