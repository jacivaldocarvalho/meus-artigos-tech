#!/bin/bash

# Autor: Jacivaldo Carvalho
# Data: 10-05-2025

# Verifica se o nome do commit foi fornecido como argumento
if [ -z "$1" ]; then
  echo "Por favor, forneça a mensagem de commit."
  exit 1
fi


# Adiciona todas as mudanças ao índice do Git
git add .

# Faz o commit com a mensagem fornecida
git commit -m "$1"

# Envia as mudanças para o repositório remoto (origin)
git push origin main  # Altere 'main' para 'master' caso seja o nome da sua branch principal
