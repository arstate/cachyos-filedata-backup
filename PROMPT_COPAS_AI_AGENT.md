# PROMPT SEKALI COPAS UNTUK AI AGENT (RESTORE FILE DATA)

> **Cara Pakai di Laptop Baru:**
> Setelah install CachyOS / Arch Linux di laptop baru, buka AI Agent Anda (Antigravity CLI, Claude Code, Cursor, Windsurf, Cline, Aider, dll.), lalu **copy-paste seluruh teks di dalam kotak kode di bawah ini**. AI Agent akan otomatis mendownload dari private dataset Hugging Face dan mengekstrak seluruh folder (atau folder yang dipilih) ke path `/mnt/HDD-2/BACKUP LINUX/FILE DATA/` (atau `$HOME/FILE DATA/` jika laptop tidak punya drive kedua).

---

## Opsi 1: Restore SEMUA 8 Folder Sekaligus

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

---

## Opsi 2: Restore Satuan / Per-Folder (Pilih Salah Satu)

Ganti `NAMA_FOLDER` dengan: `DJADI_CREATIVE`, `TIAR_PROPERTY`, `ADOBE_STOCK`, `AI_AGENT_SKILLS`, `FOTO`, `TOOLS`, `WEBSITE`, atau `MATKUL_KULIAH`.

```markdown
Tolong download dan restore HANYA folder <NAMA_FOLDER> dari repository:
https://github.com/arstate/cachyos-filedata-backup

Gunakan Hugging Face Token:
HF_TOKEN="<YOUR_HF_TOKEN>"

Jalankan:
rm -rf /tmp/cachyos-filedata-backup && git clone https://github.com/arstate/cachyos-filedata-backup.git /tmp/cachyos-filedata-backup
cd /tmp/cachyos-filedata-backup && chmod +x download.sh
HF_TOKEN="<YOUR_HF_TOKEN>" ./download.sh "$HF_TOKEN" <NAMA_FOLDER>

Pastikan folder ter-ekstrak rapi dan laporkan hasilnya.
```
