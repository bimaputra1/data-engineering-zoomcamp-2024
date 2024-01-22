# Image docker dasar
FROM python:3.9.1

# menjalankan instalasi library pandas di image ini
RUN apt-get install wget
RUN pip install pandas sqlalchemy psycopg2

# mengatur direktori kerja di dalam container
WORKDIR /app

# menyalin skrip ke container. Nama pertama adalah file sumber, nama kedua adalah tujuan
COPY ingest_data.py ingest_data.py

# mendefinisikan apa yang akan dilakukan pertama kali ketika container dijalankan
# dalam contoh ini, kita akan menjalankan skrip ingest_data.py
ENTRYPOINT ["python", "ingest_data.py"]