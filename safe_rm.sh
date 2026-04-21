# --- Aman's Production Safety Lock ---
# REMOVE ANY OTHER 'alias rm' BEFORE PASTING THIS
safe_rm() {
    for arg in "$@"; do
        if [[ "$arg" == "/" ]]; then
            echo "❌ Cannot delete root!"
            return 1
        fi
    done

    if [[ "$*" == *"-rf"* ]]; then
        echo "⚠️  Dangerous command detected: rm $*"
        read -p "Type YES to continue: " confirm

        if [[ "$confirm" != "YES" ]]; then
            echo "Aborted!"
            return 1
        fi
    fi

    /bin/rm -iv "$@"
}

alias rm='safe_rm'
