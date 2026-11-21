#!/usr/bin/env bash
set -e

# ==============================================================================
# H.E.I.T.O.R. — Script de Instalação Global da Skill para o Antigravity
# ==============================================================================

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_SKILLS_DIR="$HOME/.gemini/config/skills"
TARGET_DIR="$TARGET_SKILLS_DIR/heitor"

echo "🛡️  Instalando H.E.I.T.O.R. no Antigravity CLI..."

# Garantir que a pasta de skills globais existe
mkdir -p "$TARGET_SKILLS_DIR"

# Se já existir um link ou pasta antiga, remover com segurança
if [ -L "$TARGET_DIR" ] || [ -d "$TARGET_DIR" ]; then
    echo "ℹ️  Atualizando instalação existente em $TARGET_DIR..."
    rm -rf "$TARGET_DIR"
fi

# Criar o symlink apontando para o repositório do projeto
ln -s "$PROJECT_DIR" "$TARGET_DIR"

echo "✅ H.E.I.T.O.R. instalado com sucesso!"
echo "📂 Link simbólico criado: $TARGET_DIR -> $PROJECT_DIR"
echo ""
echo "🚀 Como usar no Antigravity CLI ou IDE:"
echo "   Basta digitar: /heitor <sua mensagem>"
echo "   Exemplo: /heitor o que tem pra hoje?"
echo "   Exemplo: /heitor prova de compiladores dia 15 e ideia de tela pro hstronomia"
echo ""
