#!/bin/bash

clear
menu() {
    clear
    echo -e "\e[32m"
    date
    echo -e "\e[0m"
    echo
    echo -e "Computador: $HOSTNAME        Usuario: $USER"
    echo
    echo "Script desenvolvido por Joao Victor, Ricardo Assuncao e Vitor Souza"
    echo
    echo -e "            MENU TAREFAS"
    echo
    echo "  =================================="
    echo " * 1. Esvaziar a Lixeira            *"
    echo " * 2. Criar pasta                   *"
    echo " * 3. Escanear Disco Local          *"
    echo " * 4. Word                          *"
    echo " * 5. Calculadora                   *"
    echo " * 6. Deletar pasta                 *"
    echo " * 7. Modo Hackerman                *"
    echo " * 8. Travar o Terminal             *"
    echo " * 9. Sair                          *"
    echo "  =================================="
    read -p " Escolha uma opcao: " opcao
    echo "------------------------------"
    case $opcao in
        1) opcao1 ;;
        2) opcao2 ;;
        3) opcao3 ;;
        4) opcao4 ;;
        5) opcao5 ;;
        6) opcao6 ;;
        7) opcao7 ;;
        8) opcao8 ;;
        9) opcao9 ;;
        *) echo "Opcao Invalida! Escolha outra opcao do menu" ;;
    esac
}

opcao1() {
    clear
    rm -rf ~/.local/share/Trash/*
    echo "=================================="
    echo "*      Lixeira Esvaziada          *"
    echo "=================================="
    read -p "Pressione Enter para continuar..."
    menu
}

opcao2() {
    clear
    mkdir -p ~/Desktop/deletar
    echo "=================================="
    echo "*         Pasta criada            *"
    echo "=================================="
    read -p "Pressione Enter para continuar..."
    menu
}

opcao3() {
    clear
    echo "=================================="
    echo "*     Escaneamento de disco       *"
    echo "=================================="
    sudo fsck -y /
    read -p "Pressione Enter para continuar..."
    menu
}

opcao4() {
    clear
    echo "=================================="
    echo "* Abrindo Word...                 *"
    echo "=================================="
    libreoffice --writer &
    read -p "Pressione Enter para continuar..."
    menu
}

opcao5() {
    clear
    echo "=================================="
    echo "* Abrindo Calculadora...          *"
    echo "=================================="
    mate-calc &
    read -p "Pressione Enter para continuar..."
    menu
}

opcao6() {
    clear
    rm -rf ~/Desktop/deletar
    echo "=================================="
    echo "*        Pasta deletada           *"
    echo "=================================="
    read -p "Pressione Enter para continuar..."
    menu
}

opcao7() {
    # Definindo cores
preto='\e[40m'
verde='\e[32m'
reset='\e[0m'
    clear
    echo -e "${preto}${verde}"
    echo "=================================="
    echo "*        Modo Hackerman...       *"
    echo "=================================="
    echo "Estamos brincando, isso é ilegal!"
    read -p "Pressione Enter para continuar..."
    menu
    echo -e "${reset}"
}

opcao8() {
    clear
    echo "=================================="
    echo "* Travar o Terminal...            *"
    echo "=================================="
    while true; do
        :
    done
}

opcao9() {
    clear
    exit
}

menu
