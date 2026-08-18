import psutil

cpu = psutil.cpu_percent(interval=2)
ram = psutil.virtual_memory()
disk = psutil.disk_usage('/')
battery = psutil.sensors_battery()

print(cpu)
print(ram)
print(disk)
print(battery)