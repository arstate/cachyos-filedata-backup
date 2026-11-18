#!/usr/bin/env bash
# ==============================================================================
# CachyOS / Linux File Data Backup Downloader & Restorer
# Source: Hugging Face Private Dataset (arya150905/cachyos-file-data-backup)
# ==============================================================================

set -euo pipefail

REPO_ID="arya150905/cachyos-file-data-backup"
DEFAULT_DEST="/mnt/HDD-2/BACKUP LINUX/FILE DATA"

if [ ! -d "/mnt/HDD-2" ]; then
    DEFAULT_DEST="$HOME/FILE DATA"
fi

DEST_DIR="${DEST_DIR:-$DEFAULT_DEST}"

# Hugging Face Access Token
HF_TOKEN="${HF_TOKEN:-${1:-}}"

if [ -z "$HF_TOKEN" ] && [ -f "$HOME/.cache/huggingface/token" ]; then
    HF_TOKEN="$(cat "$HOME/.cache/huggingface/token" | tr -d '[:space:]')"
fi

if [ -z "$HF_TOKEN" ]; then
    echo -e "\033[1;33m[?] Masukkan Hugging Face Token (Read/Write):\033[0m"
    read -r -s HF_TOKEN
    echo ""
fi

if [ -z "$HF_TOKEN" ]; then
    echo -e "\033[1;31m[!] HF_TOKEN wajib diisi untuk mendownload dari private dataset!\033[0m"
    exit 1
fi

AVAILABLE_FOLDERS=(
    "WEBSITE"
    "AI_AGENT_SKILLS"
    "MATKUL_KULIAH"
    "FOTO"
    "TOOLS"
    "ADOBE_STOCK"
    "DJADI_CREATIVE"
    "TIAR_PROPERTY"
)

TARGET_CHOICE="${2:-${TARGET:-all}}"

echo -e "\033[1;36m====================================================================\033[0m"
echo -e "\033[1;32m  CachyOS File Data Downloader & Restorer                           \033[0m"
echo -e "\033[1;36m====================================================================\033[0m"
echo -e "Target Folder : \033[1;33m$TARGET_CHOICE\033[0m"
echo -e "Destinasi     : \033[1;33m$DEST_DIR\033[0m"
echo ""

mkdir -p "$DEST_DIR"
TMP_DL="/tmp/cachyos_backup_dl"
mkdir -p "$TMP_DL"

download_and_extract() {
    local folder="$1"
    local zip_name="${folder}.zip"
    local dl_url="https://huggingface.co/datasets/${REPO_ID}/resolve/main/${zip_name}"
    local dest_zip="$TMP_DL/$zip_name"

    echo -e "\033[1;34m[*] Downloading $zip_name ...\033[0m"
    curl -L -f --progress-bar -H "Authorization: Bearer $HF_TOKEN" "$dl_url" -o "$dest_zip"

    echo -e "\033[1;32m[*] Mengestrak $zip_name ke $DEST_DIR ...\033[0m"
    unzip -qo "$dest_zip" -d "$DEST_DIR"
    rm -f "$dest_zip"
    echo -e "\033[1;32m[✓] $folder berhasil direstore!\033[0m\n"
}

if [ "$TARGET_CHOICE" = "all" ]; then
    for f in "${AVAILABLE_FOLDERS[@]}"; do
        download_and_extract "$f"
    done
else
    FOUND=false
    for f in "${AVAILABLE_FOLDERS[@]}"; do
        if [ "${f^^}" = "${TARGET_CHOICE^^}" ] || [ "${f^^}.ZIP" = "${TARGET_CHOICE^^}" ]; then
            download_and_extract "$f"
            FOUND=true
            break
        fi
    done
    if [ "$FOUND" = false ]; then
        echo -e "\033[1;31m[!] Folder '$TARGET_CHOICE' tidak ditemukan!\033[0m"
        echo "Pilihan folder: ${AVAILABLE_FOLDERS[*]} (atau 'all')"
        exit 1
    fi
fi

rm -rf "$TMP_DL"
echo -e "\033[1;32m====================================================================\033[0m"
echo -e "\033[1;32m  Restore Selesai! Seluruh data ada di: $DEST_DIR                    \033[0m"
echo -e "\033[1;32m====================================================================\033[0m"
