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

%% Parameters followed Apattu method
global N;
N = 10;

global mean_logdB;
mean_logdB = 0;

global mean_log;
% mean_log = power(10, mean_logdB/10);
mean_log = 0.1*log(10)*mean_logdB;

global var_logdB;
var_logdB = 2;

global var_log;
% var_log = power(10, var_logdB/10);
var_log = 0.1*log(10)*var_logdB;

% Abscissas
global ti;
ti = [0.115722117358 0.611757484515 1.51261026978 2.83375133774 4.59922763942 6.84452545312 9.62131684245 13.0060549933 17.1168551875 22.1510903794 28.487967251 37.0991210445];

% Weight
global wi;
wi = [0.264731371055 0.377759275873 0.24408201132 0.0904492222117 0.0201023811547 0.00266397354179 0.000203231592653 8.36505585753E-006 1.66849387675E-007 1.34239103065E-009 3.06160163494E-012 8.14807746741E-016];

global SNR_unfaded;
SNR_unfaded = 1.82;

