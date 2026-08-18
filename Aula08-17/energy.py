import time
import pynvml

pynvml.nvmlInit()
handle = pynvml.nvmlDeviceGetHandleByIndex(0)

# Instantaneous power draw in Watts
power_mw = pynvml.nvmlDeviceGetPowerUsage(handle)
print(f"Current Power: {power_mw / 1000.0:.2f} W")

# Total energy consumption in mJ (if supported by the GPU)
try:
    energy_mJ = pynvml.nvmlDeviceGetTotalEnergyConsumption(handle)
    print(f"Total Energy: {energy_mJ / 1000.0:.2f} Joules")
except pynvml.NVMLError:
    print("Total energy tracking not supported on this GPU model.")

pynvml.nvmlShutdown()