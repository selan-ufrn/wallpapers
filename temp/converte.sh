#!/bin/bash

# Verifica se o programa dwebp está instalado
if ! command -v dwebp &> /dev/null; then
    echo "O programa dwebp não está instalado. Por favor, instale-o antes de continuar."
    exit 1
fi

# Diretório contendo as imagens .webp
diretorio="."

# Loop para converter cada imagem .webp para .png
for imagem in "$diretorio"/*.webp; do
    # Obtém o nome do arquivo sem a extensão .webp
    nome_arquivo="${imagem%.webp}"

    # Converte a imagem .webp para .png
    dwebp "$imagem" -o "${nome_arquivo}.png"
done

echo "Conversão concluída!"
