import psutil
import time
from datetime import datetime
import csv

with open('./dados.csv', 'w') as csvfile:
    writer = csv.writer(csvfile)

    writer.writerow(['cpu', 'ram', 'disk', 'timestamp'])

    for i in range(5):
        cpu = psutil.cpu_percent(interval=1)
        ram = psutil.virtual_memory().percent
        disk = round(((psutil.disk_usage('/').free) / 1000000000), 2)
        timestamp = datetime.now()

        line_cpu  = f"Uso atual da CPU: {cpu}%"
        line_ram  = f"Uso atual de memória RAM: {ram}%"
        line_disk = f"Espaço livre em disco: {disk} GB"
        line_time = f"Momento de captura: {timestamp.strftime('%Y-%m-%d %H:%M:%S')}"

        print(f"""
    --------------------------------------------
    | {line_cpu:<40} |
    | {line_ram:<40} |
    | {line_disk:<40} |
    | {line_time:<40} |
    --------------------------------------------
    """)

        writer.writerow([cpu, ram, disk, timestamp])

        time.sleep(9)