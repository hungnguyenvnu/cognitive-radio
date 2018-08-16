%% Parameters
global m;
m = 5;

global Pf;
Pf = (0.01 : 0.01 : 1) .^ 2;

global threshold;
threshold = 2 * gammaincinv(1 - Pf, m, 'lower');

% Parameters for simulation
global NS;
NS = 1e4;

global var_dB;
var_dB = 5;

global variance;
variance = power(10, var_dB/10);

global SNR_avgdB;
SNR_avgdB = 38.5;

global SNR_avg;
SNR_avg = power(10, SNR_avgdB/10);

%%Parameters Guass-Hermite approximation method
global Np;
Np = 12;

global mean_gaussdB;
mean_gaussdB = 0;

global mean_gauss;
% mean_gauss = power(10, mean_gaussdB/10);
mean_gauss = 0.1*log(10)* mean_gaussdB;

global var_gaussdB;
var_gaussdB = 2;

global var_gauss;
var_gauss = 0.1*log(10)*var_gaussdB;

global an;
an = [0.31424037625435 0.94778839124016 1.59768263515260 2.27950708050106 3.020637025120890 3.88972489786978 -3.88972489786978 -3.020637025120890 -2.27950708050106 -1.59768263515260 -0.94778839124016 -0.31424037625435];

global wn;
wn = [0.5701352362625 0.260492310264 0.0516079856158 0.00390539058462 0.0000857368704358 0.000000265855168435 0.000000265855168435 0.0000857368704358 0.00390539058462 0.0516079856158 0.260492310264 0.5701352362625];

%% Parameter for Rayleigh fading

global N;
N = 10e4;

global SNR_avgdB_Ray;
SNR_avgdB_Ray = 5;

global SNR_avg_Ray;
SNR_avg_Ray = 10^(SNR_avgdB_Ray/10);



