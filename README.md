# Pynqrypt

## What is this?
Pynqrypt is an open source implementation of the AES-CTR algorithm written specifically for FPGAs.
It is by no means the fastest, nor the most efficient implementation, as it was written just for educational purposes, in order to understand how the Pynq environment works and how a generic piece of code can be ported to an FPGA.  
A report that better explains the aim of the project is available [here](docs/paper/report.pdf).

## How do I use this?
If you really want to use this, pick one of the available bitstreams [here](docs/files/).
Please do note that not all of those are stable, and some don't even behave correctly.
In order to decide which bitstream to choose, you can check out the tagged releases, which explain the main differences between all the revisions. As a general rule of thumb, the higher the version, the higher the throughput. A better explanations of the differences is available in the previously mentioned [report](docs/paper/report.pdf).  
The bitstream should contain everything needed in order to use Pynqrypt on your device.
For a *ready-made* version, check the `Pynqrypt` class in the [Jupyter notebook](docs/results.ipynb).
With the `Pynqrypt` class, using a bitstream is really easy:
```python
# this only has to be done once
# post_ap should be True if the bitstream revision is 5 or higher
pynqrypt = Pynqrypt(file='./bitstream.xsa', post_ap=True) 
pynqrypt.set_key(b'thisisthekeyyeah') # a 16 byte array
pynqrypt.set_nonce(b'noncenonceno') # a 12 byte array

# data should be a numpy buffer
data = np.frombuffer(..., np.uint8)

# please note that if len(data) is not a multiple of 16, data should be padded.
# this is a weakness of the current implementation, and should probably be 
# handled internally by the Pynqrypt class
pynqrypt.set_length(len(data))

input_buffer = pynqrypt.get_input_array()

input_buffer[:] = data[:]

output_buffer = pynqrypt.get_output_array()

pynqrypt.prepare()

# a non-blocking version will be available in the future
pynqrypt.run_blocking()

output_buffer.invalidate()

# output_buffer now contains the encrypted data
out = bytes(output_buffer)

pynqrypt.cleanup()

```

## How do I benchmark this?
The benchmarking class `PynqryptTester` is available [here](docs/results.ipynb).
```python
# post_ap should be True if the bitstream revision is 5 or higher
tester = PynqryptTester('./bitstream.xsa', post_ap=True)

tester.benchmark_and_validate_size(...)

tester.run_bench_suite()
# The bench suite will automatically benchmark the bitstream on four different
# sizes, printing the times along with how much it takes on the CPU
```

## Can I trust any of this code for my project?
No
