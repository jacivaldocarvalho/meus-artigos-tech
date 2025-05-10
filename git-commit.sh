#!/bin/bash

# Verifica se o nome do commit foi fornecido como argumento
if [ -z "$1" ]; then
  echo "Por favor, forneça a mensagem de commit."
  exit 1
fi

# Caminho para o diretório do repositório Git
# Caso o repositório esteja em outra pasta, você pode especificar o caminho absoluto
# ou navegar para o repositório antes de executar o script
#cd /caminho/para/seu/repo

# Adiciona todas as mudanças ao índice do Git
git add .

# Faz o commit com a mensagem fornecida
git commit -m "$1"

# Envia as mudanças para o repositório remoto (origin)
git push origin main  # Altere 'main' para 'master' caso seja o nome da sua branch principal
