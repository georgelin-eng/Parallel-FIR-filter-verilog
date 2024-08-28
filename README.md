# Parallel-FIR-filter-verilog
 
### Background

The direct form implementation of an FIR filter is a direct implementation of this mathematical equation
```math
y[n] = \sum_{k=0}^{N-1} h[k] \cdot x[n-k]
```

It presents itself in this fairly simple architecture. You delay the input and have a multiplier on each output of your delay line. 
![image](https://github.com/user-attachments/assets/c1dd3108-2e05-4342-87df-b0b2c08174ff)

FIR filters can be resource intensive and the long adder chain can end up being a critical path so I employed a few techqniues that will:
- Increase throughoput and supports multi-channel DSP
- Reduce tap usage
- Employs a more efficient accumulation structure

### Time Division Multiplexing

This is a technique that can be employed if the operating frequency is at least M * N where M is the number of channels and N is the nyquist rate. 
For this employed a very long delay line, which contains N * num_taps with only every N elements in the delay line being connected to the FIR filter. 
A controller used to synchronize the operation sends an `sel` signal to a mux to switch between each channel and adds it to the delay line. 

For 3 channels, the delay line would look like this. 
```math
\bf{x} \,= \,x_1[0],\,x_2[0], \,x_3[0], \,x_1[1], \,x_2[1], \,x_3[1] ...
```
Each clock cycle the delay line moves and the FIR filter processes channel 1, then channel 2, channel 3.

![image](https://github.com/user-attachments/assets/86637dde-c10e-468d-8830-a13a2d895ab1)

The output of this processes produces a 3 seperate superimposed sin waves with the noise now filtered out. A demux is used to seperate this signal into it's constituent sin waves.  
![image](https://github.com/user-attachments/assets/ca5a1704-962b-4062-850b-cddf4686457f)

These two are also helpful for understanding how TDM works. 
![image](https://github.com/user-attachments/assets/af27e64b-bea4-44c5-9639-4b3f874abe36)
![image](https://github.com/user-attachments/assets/95be613e-60cc-459c-8bbc-694f7481054e)



### Symmetric FIR architecture

The FIR filter algorithm used in the design, Parks-McClellan, produces symmetrical filter taps about N/2. This allows the a symmetric filter architecture to be employed which reorders the input sequence such so that tap usage can be halved by reusing the same multipler block for multiplying two elements.  
![image](https://github.com/user-attachments/assets/c01bb07c-1b79-4e25-9d87-857023852c45)

### Adder Tree Accumulators
This takes the critical path of N accumulators and changes it to be a log2(N) path. If the number of taps used is not an even power of 2, the inputs to some adders will be zero. 

![image](https://github.com/user-attachments/assets/845bc49d-4e3e-4789-baec-adaa3a9154db)
 

