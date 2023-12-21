/*
    Synchronizes two different clock frequencies. 

    e.g. Receives a 12Mhz clock input and outputs a 10 Mhz clock input
    These are controlled via parameters 

    Inputs
        clkIn - Input clock signal. Expecting a stable 50% duty cycle clock signal
    
    Outputs
        clkOut - Output clock signal

    Parameters
        freqIn - frequency of clkIn and expecting a value in Mhz

*/

module clkSync(
    input clkIn,
    output clkOut
);

    parameter freqIn;
    parameter freqOUt;



endmodule