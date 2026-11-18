# CachyOS / Linux File Data Backup & Restore Hub (`arstate`)

[![OS](https://img.shields.io/badge/OS-CachyOS%20%2F%20Arch%20Linux-0078D7?style=for-the-badge&logo=arch-linux&logoColor=white)](https://cachyos.org/)
[![Storage](https://img.shields.io/badge/Cloud-Hugging%20Face%20Private%20Dataset-FFD21E?style=for-the-badge&logo=huggingface&logoColor=black)](https://huggingface.co/datasets/arya150905/cachyos-file-data-backup)
[![Status](https://img.shields.io/badge/Verified-100%25%20Clean-success?style=for-the-badge)](https://github.com/arstate/cachyos-filedata-backup)

Hub restore data kerjaan dan arsip penting Linux milik **[arstate](https://github.com/arstate)**.
Seluruh folder dibackup dalam bentuk **file `.zip` satuan per-folder** (bebas dari sampah `node_modules` & `.cache`), disimpan secara aman dan **private lifetime** di Hugging Face Private Dataset (`arya150905/cachyos-file-data-backup`), sehingga bisa didownload satuan secara cepat menggunakan link langsung (`curl` / `download.sh`).

---

## ⚡ INSTALASI 1-KLIK VIA AI AGENT (COPAS PROMPT INI DI LAPTOP BARU)

> [!TIP]
> **Punya laptop baru dengan CachyOS / Arch Linux?**
> Cukup copy seluruh prompt di bawah ini lalu paste ke AI Agent Anda (Antigravity CLI, Claude Code, Cursor, Windsurf, Cline, Aider, dll.). AI Agent akan otomatis mendownload dari private dataset dan mengekstrak folder data ke path yang tepat.

```markdown
Tolong restore seluruh backup folder data kerjaan saya (8 folder) dari repository resmi:
https://github.com/arstate/cachyos-filedata-backup

Gunakan Hugging Face Token:
HF_TOKEN="<YOUR_HF_TOKEN>"

Jalankan perintah berikut secara otomatis di terminal:
1. Clone repo setup:
   rm -rf /tmp/cachyos-filedata-backup
   git clone https://github.com/arstate/cachyos-filedata-backup.git /tmp/cachyos-filedata-backup
   cd /tmp/cachyos-filedata-backup
   chmod +x download.sh

2. Jalankan download & auto-extract semua folder:
   HF_TOKEN="<YOUR_HF_TOKEN>" ./download.sh "$HF_TOKEN" all

3. Pastikan ke-8 folder berikut ter-ekstrak sempurna tanpa node_modules:
   - DJADI CREATIVE
   - TIAR.PROPERTY
   - ADOBE STOCK
   - AI AGENT SKILLS
   - FOTO
   - TOOLS
   - WEBSITE
   - MATKUL KULIAH

Laporkan total ukuran dan direktori hasil ekstrak di akhir eksekusi.
```

> Ingin download per-folder satuan (misal cuma mau download `WEBSITE` atau `DJADI_CREATIVE`)? Lihat [PROMPT_COPAS_AI_AGENT.md](PROMPT_COPAS_AI_AGENT.md).

---

## 📦 DAFTAR ARSIP FOLDER BACKUP & UKURAN

| No | Nama Folder | File ZIP Cloud | Ukuran Asli | Ukuran ZIP | Status |
|:---:|---|---|---:|---:|:---:|
| 1 | `WEBSITE` | `WEBSITE.zip` | 1.9 GB | **29.1 MB** | ✅ Uploaded |
| 2 | `AI AGENT SKILLS` | `AI_AGENT_SKILLS.zip` | 504 MB | **476.0 MB** | ⏳ Uploading |
| 3 | `MATKUL KULIAH` | `MATKUL_KULIAH.zip` | 622 MB | **605.1 MB** | ⏳ Uploading |
| 4 | `FOTO` | `FOTO.zip` | 2.1 GB | **2,046.3 MB** | ⏳ Uploading |
| 5 | `TOOLS` | `TOOLS.zip` | 3.6 GB | **2,649.2 MB** | ⏳ Uploading |
| 6 | `ADOBE STOCK` | `ADOBE_STOCK.zip` | 4.6 GB | **4,600.4 MB** | ⏳ Uploading |
| 7 | `DJADI CREATIVE` | `DJADI_CREATIVE.zip` | 19.0 GB | **10,029.3 MB** | ⏳ Uploading |
| 8 | `TIAR.PROPERTY` | `TIAR_PROPERTY.zip` | 31.0 GB | **25,009.2 MB** | ⏳ Uploading |

> *Catatan: Folder `node_modules` dan `.cache` secara sengaja di-exclude dari semua arsip zip sehingga ukuran jauh lebih ramping dan bersih dari junk.*

---

## 🛠️ DOWNLOAD MANUAL VIA TERMINAL

Bila ingin mendownload manual tanpa AI Agent:

```bash
git clone https://github.com/arstate/cachyos-filedata-backup.git /tmp/cachyos-filedata-backup
cd /tmp/cachyos-filedata-backup
chmod +x download.sh

# Download SEMUA folder:
./download.sh "<YOUR_HF_TOKEN>" all

# Atau download SATU folder spesifik (contoh: DJADI_CREATIVE):
./download.sh "<YOUR_HF_TOKEN>" DJADI_CREATIVE
```

Default destinasi ekstraksi adalah `/mnt/HDD-2/BACKUP LINUX/FILE DATA/` (atau `$HOME/FILE DATA` jika drive `HDD-2` tidak ditemukan). Anda bisa mengubahnya dengan menentukan `DEST_DIR`:
```bash
DEST_DIR="/data/projek" ./download.sh "<YOUR_HF_TOKEN>" all
```

---

## 🔒 KEAMANAN & PRIVASI
- File arsip disimpan pada **Private Dataset** Hugging Face (`arya150905/cachyos-file-data-backup`).
- Hanya dapat diunduh menggunakan Access Token akun Hugging Face Anda (`hf_...`).
- Publik hanya dapat melihat file dokumentasi `README.md` dan skrip `download.sh` di GitHub, tanpa bisa mengakses data file tanpa token.
