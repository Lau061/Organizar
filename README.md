# Organizador de Arquivos no Linux 🗂️🐧

Este é um script simples em Bash que organiza automaticamente os arquivos de uma pasta, separando-os em subpastas de acordo com seus tipos (imagens, documentos, áudios, vídeos e outros).

## Como funciona?

O script:
- Cria as pastas `Imagens`, `Documentos`, `Áudios`, `Vídeos` e `Outros`.
- Move cada arquivo para a pasta correspondente, com base em sua extensão.

## Como usar

1. Dê permissão de execução ao script:

```bash
chmod +x organizar.sh
```

2. Execute o script informando o diretório a ser organizado:

```bash
./organizar.sh /caminho/da/pasta
```

Se você não informar nenhum caminho, ele organiza a pasta atual.

## Exemplo

```bash
./organizar.sh /home/seunome/Downloads
```

## Requisitos

- Qualquer sistema Linux/Unix
- Bash Shell

## Autor

Criado por **Laurinha** em abril de 2025.

---

Espero que este projeto seja útil! 🚀  
Fique à vontade para contribuir ou sugerir melhorias.
