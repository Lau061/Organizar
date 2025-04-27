#!/bin/bash

# Organizador de Arquivos por Tipo
# Autor: Laura Hermones
# Data: 27/04/2025

# Defina o diretório a ser organizado (pode mudar para "." para o diretório atual)
DIRETORIO=${1:-"."}

# Cria as pastas caso não existam
mkdir -p "$DIRETORIO/Imagens"
mkdir -p "$DIRETORIO/Documentos"
mkdir -p "$DIRETORIO/Áudios"
mkdir -p "$DIRETORIO/Vídeos"
mkdir -p "$DIRETORIO/Outros"

# Move arquivos de acordo com a extensão
for arquivo in "$DIRETORIO"/*; do
  if [ -f "$arquivo" ]; then
    extensao="${arquivo##*.}"
    case "$extensao" in
      jpg|jpeg|png|gif)
        mv "$arquivo" "$DIRETORIO/Imagens/"
        ;;
      pdf|doc|docx|txt)
        mv "$arquivo" "$DIRETORIO/Documentos/"
        ;;
      mp3|wav|ogg)
        mv "$arquivo" "$DIRETORIO/Áudios/"
        ;;
      mp4|mkv|avi)
        mv "$arquivo" "$DIRETORIO/Vídeos/"
        ;;
      *)
        mv "$arquivo" "$DIRETORIO/Outros/"
        ;;
    esac
  fi
done

echo "Organização concluída!"
