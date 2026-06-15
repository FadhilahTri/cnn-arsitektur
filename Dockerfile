# Gunakan Python 3.10 slim sebagai base image
FROM python:3.10-slim

# Tentukan direktori kerja di dalam container
WORKDIR /app

# Salin file requirements.txt terlebih dahulu (agar caching Docker efisien)
COPY requirements.txt .

# Install library Python tanpa cache untuk menghemat ruang
RUN pip install --no-cache-dir -r requirements.txt

# Salin seluruh kode proyek ke dalam container
COPY . .

# Buat folder uploads jika belum ada dan berikan izin akses
RUN mkdir -p static/uploads && chmod 777 static/uploads

# Port standar yang digunakan Hugging Face Spaces adalah 7860
EXPOSE 7860

# Jalankan Flask app menggunakan Gunicorn pada port 7860
CMD ["gunicorn", "-b", "0.0.0.0:7860", "app:app"]
