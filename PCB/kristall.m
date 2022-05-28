% This is how I compute the LSE and HSE crystal!

disp('LSE')
Cs = 5*10^-12; % Stray
CL = 7*10^-12; % Last
ESR = 70*10*3; % Resistans
F = 32.768*10^3; % Frekvens
Co = 1.05*10^-12; % Shunt

% Hitta kondensatorerna f�r kristallen 
C = 2*(CL - Cs)

% R�kna ut om gm_crit �r bra
gm_crit = 4*ESR*(2*pi*F)^2*(Co+CL)^2*10^6
gm = 8;
5 < gm/gm_crit

% Kolla om gm_crit �r st�rre �n gm_crit_max
gm_crit_max = 1.6;
gm_crit_max > gm_crit

disp('HSE')
Cs = 5*10^-12;
CL = 10*10^-12;
ESR = 400;
F = 8*10^6;
Co = 5*10^-12;

% Hitta kondensatorerna f�r kristallen 
C = 2*(CL - Cs)

% R�kna ut om gm_crit �r bra
gmcrit = 4*ESR*(2*pi*F)^2*(Co+CL)^2*10^3
gm = 10;
5 < gm/gmcrit

% Kolla om gm_crit �r st�rre �n gm_crit_max
gm_crit_max = 2;
gm_crit_max > gm_crit

% R�kna ut den externa resistorn
Rext = 1/(2*pi*F*C)

% Verifiera om gm_crit �r mindre �n gm
gmcrit = 4*(ESR+Rext)*(2*pi*F)^2*(Co+CL)^2*10^3;
gm > gmcrit