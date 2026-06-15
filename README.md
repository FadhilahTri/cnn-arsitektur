# Klasifikasi Arsitektur Menggunakan CNN (Convolutional Neural Network)

Proyek ini adalah aplikasi web berbasis Flask yang menggunakan model Deep Learning (CNN) dengan TensorFlow/Keras untuk mengklasifikasikan gaya arsitektur bangunan berdasarkan gambar yang diunggah oleh pengguna.

## 🛠️ Tech Stack
* **Backend:** Python, Flask
* **Machine Learning:** TensorFlow, Keras, NumPy
* **Data Processing & Visualization:** Pillow (PIL), Matplotlib
* **Frontend:** HTML, CSS (Vanilla)

## 📁 Struktur Proyek
```text
cnn-arsitektur/
├── dataset/                  # Folder dataset gambar arsitektur (diabaikan di Git)
│   ├── 21st_Century/
│   ├── Baroque/
│   ├── Classical/
│   ├── Early_Christian_Medieval/
│   ├── Eclecticism/
│   ├── Modernism/
│   ├── Neoclassicism/
│   ├── Renaissance_and_Colonialism/
│   └── Revivalism/
├── model/                    # Folder penyimpanan model hasil training
│   ├── class_names.json      # File label nama kelas arsitektur
│   └── cnn_arsitektur.h5     # File model terlatih (diabaikan di Git)
├── static/                   # Aset statis web
│   ├── uploads/              # Folder penyimpanan sementara gambar yang diupload
│   └── training_result.png   # Grafik hasil akurasi & loss training
├── templates/                # Template HTML Flask
│   ├── index.html            # Halaman utama (upload)
│   └── result.html           # Halaman hasil klasifikasi
├── .gitignore                # Daftar file/folder yang diabaikan Git
├── app.py                    # Aplikasi utama Flask (Web Server & Inference)
├── requirements.txt          # Daftar package/library yang dibutuhkan
└── train_model.py            # Script untuk melatih (train) model CNN
```

---

## 🚀 Panduan Setup & Instalasi

### 1. Clone Repository & Masuk ke Folder Proyek
```bash
git clone <url-repository-github-anda>
cd cnn-arsitektur
```

### 2. Buat dan Aktifkan Virtual Environment (Opsional tapi disarankan)
Jika Anda menggunakan Windows:
```bash
python -m venv venv
.\venv\Scripts\activate
```
Jika Anda menggunakan macOS/Linux:
```bash
python3 -m venv venv
source venv/bin/activate
```

### 3. Instal Library yang Dibutuhkan
```bash
pip install -r requirements.txt
```

---

## 🧠 Cara Melatih Model (Training)

1. Pastikan Anda sudah menyiapkan folder **`dataset/`** yang berisi sub-folder gambar arsitektur berdasarkan kelasnya (total 9 kelas).
2. Jalankan perintah berikut untuk melatih model:
   ```bash
   python train_model.py
   ```
3. Script akan berjalan sebanyak 20 epoch (dapat disesuaikan di `train_model.py`). Setelah selesai, file berikut akan otomatis dibuat:
   * **`model/cnn_arsitektur.h5`**: File model CNN yang sudah terlatih.
   * **`model/class_names.json`**: File JSON berisi daftar nama kelas arsitektur.
   * **`static/training_result.png`**: Grafik akurasi dan loss selama proses training.

---

## 💻 Cara Menjalankan Aplikasi Web

1. Pastikan model **`model/cnn_arsitektur.h5`** sudah ada di folder `model/` (bisa didapatkan dari hasil training di atas).
2. Jalankan aplikasi Flask:
   ```bash
   python app.py
   ```
3. Buka browser dan akses alamat berikut:
   ```text
   http://127.0.0.1:5000
   ```
4. Unggah foto bangunan arsitektur untuk melihat hasil prediksi gaya arsitekturnya beserta tingkat akurasinya (confidence score).
