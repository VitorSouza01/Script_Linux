#!/bin/bash

# Estrutura do Código

# -----------------------------------------------------------------------------

# Menu de Tarefas
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
    echo " * 2. Criar Pasta                   *"
    echo " * 3. Escanear Disco Local          *"
    echo " * 4. LibreOffice Writer            *"
    echo " * 5. Calculadora                   *"
    echo " * 6. Deletar Pasta                 *"
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

# -----------------------------------------------------------------------------
# Opcao 1. Esvaziar a Lixeira
# Status:

opcao1() {
    clear
    rm -rf ~/.local/share/Trash/*
    echo "=================================="
    echo "*      Lixeira Esvaziada          *"
    echo "=================================="
    read -p "Pressione Enter para continuar..."
    menu
}

# -----------------------------------------------------------------------------
# Opcao 2. Criar Pasta
# Status:

opcao2() {
    clear
    mkdir -p ~/Desktop/deletar
    echo "=================================="
    echo "*         Pasta criada            *"
    echo "=================================="
    read -p "Pressione Enter para continuar..."
    menu
}

# -----------------------------------------------------------------------------
# Opcao 3. Escanear Disco Local 
# Status:

opcao3() {
    clear
    echo "=================================="
    echo "*     Escaneamento de disco       *"
    echo "=================================="
    sudo fsck -y /
    read -p "Pressione Enter para continuar..."
    menu
}

# -----------------------------------------------------------------------------
# Opcao 4. LibreOffice Writer 
# Status: Esta Funcionando

opcao4() {
    clear
    echo "=================================="
    echo "* LibreOffice Writer...          *"
    echo "=================================="
    libreoffice24.2 --writer &
    read -p "Pressione Enter para continuar..."
    menu
}

# -----------------------------------------------------------------------------
# Opcao 5. Calculadora   
# Status: Esta Funcionando

opcao5() {
    clear
    echo "=================================="
    echo "* Abrindo Calculadora...          *"
    echo "=================================="
    mate-calc &
    read -p "Pressione Enter para continuar..."
    menu
}

# -----------------------------------------------------------------------------
# Opcao 6. Deletar Pasta    
# Status:

opcao6() {
    clear
    rm -rf ~/Desktop/deletar
    echo "=================================="
    echo "*        Pasta deletada           *"
    echo "=================================="
    read -p "Pressione Enter para continuar..."
    menu
}

# -----------------------------------------------------------------------------
# Opcao 7. Modo Hackerman 
# Status: Esta Funcionando

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
    tree /
    read -p "Pressione Enter para continuar..."
    menu
    echo -e "${reset}"
}

# -----------------------------------------------------------------------------
# Opcao 8. Travar o Terminal 
# Status:

opcao8() {
    clear
    echo "=================================="
    echo "* Travar o Terminal...            *"
    echo "=================================="
    while true; do
        :
    done
}

# -----------------------------------------------------------------------------
# Opcao 9. Sair    
# Status: Esta Funcionando

opcao9() {
    clear
    exit
}

menu

# -----------------------------------------------------------------------------
