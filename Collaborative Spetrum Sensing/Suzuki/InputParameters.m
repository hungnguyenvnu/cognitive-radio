% Parameters 
global m;
m = 5;

global N;
N = 1e4;

global n;
n = 5;

global variance_dB;
variance_dB = 5;

global variance;
variance = power(10, variance_dB/10);

global mu;
mu = 2;

global sigma;
sigma = 5;

global mu_z;
mu_z = power(10, mu/10);

global sigma_z;
sigma_z = power(10, sigma/10);

global SNR_avgdB;
SNR_avgdB = 33;

global SNR_avg;
SNR_avg = power(10, SNR_avgdB/10);

global Np;
Np = 12;

global an;
an = [0.31424037625435 0.94778839124016 1.59768263515260 2.27950708050106 3.020637025120890 3.88972489786978 -3.88972489786978 -3.020637025120890 -2.27950708050106 -1.59768263515260 -0.94778839124016 -0.31424037625435];

global wn;
wn = [0.5701352362625 0.260492310264 0.0516079856158 0.00390539058462 0.0000857368704358 0.000000265855168435 0.000000265855168435 0.0000857368704358 0.00390539058462 0.0516079856158 0.260492310264 0.5701352362625];

global Qf;
Qf = (0.01 : 0.01 : 1) .^ 2;

global threshold;
threshold = 2 * gammaincinv(1 - Qf, m, 'lower');
