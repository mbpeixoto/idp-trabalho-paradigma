#!/bin/bash

# Função para exibir o menu
menu() {
    echo "Escolha uma opção:"
    echo "1 - Ler arquivo"
    echo "2 - Escrever em arquivo"
    echo "3 - Remover arquivo"
    echo "4 - Listar arquivos no diretório"
    echo "5 - Sair"
    echo
    read -p "Digite a opção: " opcao
    return $opcao
}

# Função para ler arquivo
ler_arquivo() {
    read -p "Digite o nome do arquivo a ser lido: " arquivo
    if [[ -f $arquivo ]]; then
        cat "$arquivo"
    else
        echo "Arquivo não encontrado."
    fi
}

# Função para escrever em arquivo
escrever_arquivo() {
    read -p "Digite o nome do arquivo a ser escrito: " arquivo
    read -p "Digite o texto para adicionar: " texto
    echo "$texto" >> "$arquivo"
    echo "Texto adicionado com sucesso."
}

# Função para remover arquivo
remover_arquivo() {
    read -p "Digite o nome do arquivo a ser removido: " arquivo
    if [[ -f $arquivo ]]; then
        rm "$arquivo"
        echo "Arquivo removido com sucesso."
    else
        echo "Arquivo não encontrado."
    fi
}

# Função para listar arquivos
listar_arquivos() {
    echo "Arquivos no diretório atual:"
    ls -l
}

# Loop principal
while true; do
    menu
    opcao=$?
    case $opcao in
        1)
            ler_arquivo
            ;;
        2)
            escrever_arquivo
            ;;
        3)
            remover_arquivo
            ;;
        4)
            listar_arquivos
            ;;
        5)
            echo "Saindo..."
            break
            ;;
        *)
            echo "Opção inválida, tente novamente."
            ;;
    esac
    echo
done
