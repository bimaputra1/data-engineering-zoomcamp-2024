# Image docker dasar
FROM python:3.9.1

# menjalankan instalasi library pandas di image ini
RUN apt-get install wget
RUN pip install pandas sqlalchemy psycopg2

# mengatur direktori kerja di dalam container
WORKDIR /app

# menyalin skrip ke container. Nama pertama adalah file sumber, nama kedua adalah tujuan
# COPY ingest_data_green.py ingest_data_green.py
COPY ingest_data_zone.py ingest_data_zone.py

# mendefinisikan apa yang akan dilakukan pertama kali ketika container dijalankan
# ENTRYPOINT ["python", "ingest_data_green.py"]
ENTRYPOINT ["python", "ingest_data_zone.py"]