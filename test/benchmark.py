def pretty_print_speed(speed):
    speed *= 8 # b/s to bps
    if speed > 1024 ** 3:
        speed /= 1024 ** 3
        return f'{speed:.2f} Gbps'
    elif speed > 1024 * 1024:
        speed /= 1024 * 1024
        return f'{speed:.2f} Mbps'
    elif speed > 1024:
        speed /= 1024
        return f'{speed:.2f} Kbps'
    else:
        return f'{speed:.2f} bps'

import time
from random import randbytes
from Crypto.Cipher import AES

def benchmark(length):
    key = randbytes(16)
    nonce = randbytes(12)
    data = randbytes(length)

    cipher = AES.new(key, AES.MODE_CTR, nonce=nonce)

    start = time.perf_counter_ns()
    cipher.encrypt(data)
    end = time.perf_counter_ns()

    return end - start

for size in [16, 1024, 256 * 1024, 16 * 1024 * 1024]:
    diff_cpu = []
    for _ in range(10):
        diff_cpu.append(benchmark(size))
    diff_cpu.sort()
    res_cpu = sum(diff_cpu[1:-1]) / 8e9
    print(f'Results for size {size} bytes:')
    print(f'CPU: {res_cpu * 1000:.2f} ms')
    print(f'CPU Throughput: ' + pretty_print_speed(size / res_cpu))
