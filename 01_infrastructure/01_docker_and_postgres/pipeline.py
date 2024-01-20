import sys
import pandas # kita tidak perlu ini saat ini jadi hanya untuk contoh

# mencetak argumen
print(sys.argv)

# argumen 0 adalah nama file
# argumen 1 berisi argumen pertama yang sebenarnya kita perlukan
day = sys.argv[1]

# tampilkan kalimat dengan argumen
print(f'job finished successfully for day = {day}')