function Hd = filterFunc
%FILTERFUNC Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.13 and Signal Processing Toolbox 9.1.
% Generated on: 17-Nov-2023 05:52:50

% Equiripple Lowpass filter designed using the FIRPM function.

% All frequency values are in kHz.
Fs = 1000;  % Sampling Frequency

Fpass = 200;             % Passband Frequency
Fstop = 380;             % Stopband Frequency
Dpass = 0.057501127785;  % Passband Ripple
Dstop = 0.0001;          % Stopband Attenuation
dens  = 20;              % Density Factor

% Calculate the order from the parameters using FIRPMORD.
[N, Fo, Ao, W] = firpmord([Fpass, Fstop]/(Fs/2), [1 0], [Dpass, Dstop]);

% Calculate the coefficients using the FIRPM function.
b_kHz  = firpm(N, Fo, Ao, W, {dens});
Hd = dfilt.dffir(b_kHz);

% [EOF]