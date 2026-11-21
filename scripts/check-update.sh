#!/usr/bin/env bash
# ==============================================================================
# H.E.I.T.O.R. — Verificador e Atualizador Automático de Versão
# ==============================================================================

SKILL_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CONFIG_FILE="$HOME/.config/heitor/config.json"

check_updates() {
    cd "$SKILL_DIR" || exit 1
    
    # Busca silenciosa das novidades do repositório remoto
    git fetch -q origin main 2>/dev/null || return 1
    
    LOCAL_COMMIT=$(git rev-parse HEAD)
    REMOTE_COMMIT=$(git rev-parse origin/main)
    
    if [ "$LOCAL_COMMIT" != "$REMOTE_COMMIT" ]; then
        AHEAD_COUNT=$(git rev-list HEAD..origin/main --count)
        if [ "$AHEAD_COUNT" -gt 0 ]; then
            echo "UPDATE_AVAILABLE:$AHEAD_COUNT"
            echo "--- CHANGELOG ---"
            git log HEAD..origin/main --oneline
            return 0
        fi
    fi
    
    echo "UP_TO_DATE"
    return 0
}

apply_update() {
    cd "$SKILL_DIR" || exit 1
    echo "Atualizando H.E.I.T.O.R..."
    git pull --rebase origin main
}

case "$1" in
    --check)
        check_updates
        ;;
    --apply)
        apply_update
        ;;
    *)
        echo "Uso: $0 [--check | --apply]"
        exit 1
        ;;
esac
