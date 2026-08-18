# python3 -m pip install nvidia-ml-py

from pynvml import *

nvmlInit()

print(f"Driver Version: {nvmlSystemGetDriverVersion()}")
deviceCount = nvmlDeviceGetCount()
for i in range(deviceCount):
    handle = nvmlDeviceGetHandleByIndex(i)
    print(f"Device {i} : {nvmlDeviceGetName(handle)}")
    info = nvmlDeviceGetMemoryInfo(handle)
    print(f"Total memory: {info.total}")
    print(f"Free memory:, {info.free}")
    print(f"Used memory: {info.used}")

    percentage = (info.used * 100) / info.total
    print(f"Percentage of use: {round(percentage, 2)}%")

nvmlShutdown()