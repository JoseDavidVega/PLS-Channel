%% Physical layer security for MIMO systems over kappa mu shadowed fading channel
clear 
close all
clc
tic;
%------------------Parameters of Monte Carlo Simulation-------------------
Nsim=1e3;         % number of samples
%--------------------------REEDME-----------------------------------------
% To generate the Monte Carlo (MC) simulation of each Figure of the paper,
% please uncomment the code. 
% For example, to generate the MC of Figure 2, uncomment all sections
% titled "FIGURE 2-case x, where x={1,2,3,4}".

%% FIGURE 2 (by varying NA, NB=2, NE=2) Here, you can see the simulation times
%% FIGURE 2-case 1
%%--------------------------FIGURE 2-case 1---------------------------------
%%-------------------------------------------------------------------------
%%----------------------MONTE CARLO (MC) SIMULATION------------------------
%%----------------------ELAPSED TIME IS 58.22 sec.-------------------------
%%---to verify the MC time lcick en RUN bottom ----------------------------
%%-------------------------------------------------------------------------
%%-------------------------------------------------------------------------
fig=2; cur=1; %flags
NA=1;         % number of antennas at Alice (transmissor)
NB=2;         % number of antennas at Bob (legitimate receiver)
NE=2;         % number of antennas at Eve (eavesdropper receiver)
%%------------ Set the fading paramters of the kappa mu shadowed channel----
kappa=2;
muB=2;
muE=2;
m=3;
Omega=1;
hb=zeros(NA,NB,Nsim);
he=zeros(NA,NE,Nsim);
%%------------ secrecy threshold------------------------------------------
Rs = 1;
tau = 2^(Rs);
%%--------------------END FIGURE 2-case 1----------------------------------

%% FIGURE 2-case 2
% %%--------------------------FIGURE 2-case 2------------------------------
%%-------------------------------------------------------------------------
%%----------------------MONTE CARLO (MC) SIMULATION------------------------
%%----------------------ELAPSED TIME IS 11.96 sec.-------------------------
%%---to verify the MC time uncomment the parameters of FIGURE 2-case 2-----
%%-------------------------------------------------------------------------
%%-------------------------------------------------------------------------
% fig=2; cur=2;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel---
% kappa=2;
% muB=2;
% muE=2;
% m=3;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 1;
% tau = 2^(Rs);
% %%--------------------END FIGURE 2-case 2----------------------------------

%% FIGURE 2-case 3
% %%--------------------------FIGURE 2-case 3---------------------------------
%%-------------------------------------------------------------------------
%%----------------------MONTE CARLO (MC) SIMULATION------------------------
%%----------------------ELAPSED TIME IS 173.90 sec.------------------------
%%---to verify the MC time uncomment the parameters of FIGURE 2-case 3-----
%%-------------------------------------------------------------------------
%%-------------------------------------------------------------------------
% fig=2; cur=3;
% NA=3;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=2;
% muB=2;
% muE=2;
% m=3;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 1;
% tau = 2^(Rs);
% %---------------------END FIGURE 2-case 3----------------------------------

%% FIGURE 2-case 4

% %%--------------------------FIGURE 2-case 4------------------------------
%%-------------------------------------------------------------------------
%%----------------------MONTE CARLO (MC) SIMULATION------------------------
%%----------------------ELAPSED TIME IS 540.20 sec.------------------------
%%---to verify the MC time uncomment the parameters of FIGURE 2-case 2-----
%%-------------------------------------------------------------------------
%%-------------------------------------------------------------------------
% fig=2; cur=4;
% NA=4;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel--
% kappa=2;
% muB=2;
% muE=2;
% m=3;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 1;
% tau = 2^(Rs);
% %%--------------------END FIGURE 2-case 4----------------------------------

%% FIGURE 3 (by varying NE, NA=2, NE=2)

%% FIGURE 3-case 1
% %%--------------------------FIGURE 3-case 1---------------------------------
% fig=3; cur=1;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=1;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=5;
% muB=3;
% muE=3;
% m=1;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 1;
% tau = 2^(Rs);
% %%--------------------END FIGURE 3-case 1----------------------------------
%% FIGURE 3-case 2
% %%--------------------------FIGURE 3-case 2---------------------------------
% fig=3; cur=2;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=1;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=5;
% muB=3;
% muE=3;
% m=10;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 1;
% tau = 2^(Rs);
% %%--------------------END FIGURE 3-case 2----------------------------------
%% FIGURE 3-case 3
% %%--------------------------FIGURE 3-case 3---------------------------------
% fig=3; cur=3;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=5;
% muB=3;
% muE=3;
% m=1;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 1;
% tau = 2^(Rs);
% %%--------------------END FIGURE 3-case 3----------------------------------
%% FIGURE 3-case 4
% %%--------------------------FIGURE 3-case 4---------------------------------
% fig=3; cur=4;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=5;
% muB=3;
% muE=3;
% m=10;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 1;
% tau = 2^(Rs);
% %%--------------------END FIGURE 3-case 4----------------------------------
%% FIGURE 3-case 5
% %%--------------------------FIGURE 3-case 5---------------------------------
% fig=3; cur=5;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=3;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=5;
% muB=3;
% muE=3;
% m=1;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 1;
% tau = 2^(Rs);
% %%--------------------END FIGURE 3-case 5----------------------------------
%% FIGURE 3-case 6
% %%--------------------------FIGURE 3-case 6---------------------------------
% fig=3; cur=6;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=3;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=5;
% muB=3;
% muE=3;
% m=10;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 1;
% tau = 2^(Rs);
% %%--------------------END FIGURE 3-case 6----------------------------------

%% FIGURE 3-case 7
% %%--------------------------FIGURE 3-case 7---------------------------------
% fig=3; cur=7;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=4;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=5;
% muB=3;
% muE=3;
% m=1;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 1;
% tau = 2^(Rs);
% %%--------------------END FIGURE 3-case 7----------------------------------
%% FIGURE 3-case 8
% %%--------------------------FIGURE 3-case 8---------------------------------
% fig=3; cur=8;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=4;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=5;
% muB=3;
% muE=3;
% m=10;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 1;
% tau = 2^(Rs);
% %%--------------------END FIGURE 3-case 8----------------------------------

%% FIGURE 4 by varying NB, NE=2, NA=2
%% FIGURE 4-case 1
% %%--------------------------FIGURE 4-case 1---------------------------------
% fig=4; cur=1;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=1.5;
% muB=1;
% muE=1;
% m=2;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 2;
% tau = 2^(Rs);
% %%--------------------END FIGURE 4-case 1----------------------------------
%% FIGURE 4-case 2
% %%--------------------------FIGURE 4-case 2---------------------------------
% fig=4; cur=2;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=10;
% muB=1;
% muE=1;
% m=2;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 2;
% tau = 2^(Rs);
% %%--------------------END FIGURE 4-case 2----------------------------------
%% FIGURE 4-case 3
% %%--------------------------FIGURE 4-case 3---------------------------------
% fig=4; cur=3;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=3;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=1.5;
% muB=1;
% muE=1;
% m=2;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 2;
% tau = 2^(Rs);
% %%--------------------END FIGURE 4-case 3----------------------------------
%% FIGURE 4-case 4
% %%--------------------------FIGURE 4-case 4---------------------------------
% fig=4; cur=4;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=3;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=10;
% muB=1;
% muE=1;
% m=2;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 2;
% tau = 2^(Rs);
% %%--------------------END FIGURE 4-case 4----------------------------------
%% FIGURE 4-case 5
% %%--------------------------FIGURE 4-case 5---------------------------------
% fig=4; cur=5;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=4;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=1.5;
% muB=1;
% muE=1;
% m=2;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 2;
% tau = 2^(Rs);
% %%--------------------END FIGURE 4-case 5----------------------------------
%% FIGURE 4-case 6
% %%--------------------------FIGURE 4-case 6---------------------------------
% fig=4; cur=6;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=4;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=10;
% muB=1;
% muE=1;
% m=2;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 2;
% tau = 2^(Rs);
% %%--------------------END FIGURE 4-case 6----------------------------------
%% FIGURE 4-case 7
% %%--------------------------FIGURE 4-case 7---------------------------------
% fig=4; cur=7;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=1;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=1.5;
% muB=1;
% muE=1;
% m=2;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 2;
% tau = 2^(Rs);
% %%--------------------END FIGURE 4-case 6----------------------------------
%% FIGURE 4-case 8
% %%--------------------------FIGURE 4-case 8---------------------------------
% fig=4; cur=8;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=1;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=10;
% muB=1;
% muE=1;
% m=2;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 2;
% tau = 2^(Rs);
% %%--------------------END FIGURE 4-case 8----------------------------------

%% FIGURE 5 by varying Mu_b and Mu_e
%% FIGURE 5-case 1
% %%--------------------------FIGURE 5-case 1---------------------------------
% fig=5; cur=1;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=3;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=4;
% muB=2;
% muE=1;
% m=5;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 2;
% tau = 2^(Rs);
% %%--------------------END FIGURE 5-case 1----------------------------------
%% FIGURE 5-case 2
% %%--------------------------FIGURE 5-case 2---------------------------------
% fig=5; cur=2;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=3;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=4;
% muB=3;
% muE=1;
% m=5;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 2;
% tau = 2^(Rs);
% %%--------------------END FIGURE 5-case 2----------------------------------
%% FIGURE 5-case 3
% %%--------------------------FIGURE 5-case 3---------------------------------
% fig=5; cur=3;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=3;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=4;
% muB=4;
% muE=1;
% m=5;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 2;
% tau = 2^(Rs);
% %%--------------------END FIGURE 5-case 3----------------------------------
%% FIGURE 5-case 4
% %%--------------------------FIGURE 5-case 4---------------------------------
% fig=5; cur=4;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=3;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=4;
% muB=5;
% muE=1;
% m=5;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 2;
% tau = 2^(Rs);
% %%--------------------END FIGURE 5-case 4----------------------------------
%% FIGURE 5-case 5
% %%--------------------------FIGURE 5-case 5---------------------------------
% fig=5; cur=5;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=3;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=4;
% muB=1;
% muE=2;
% m=5;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 2;
% tau = 2^(Rs);
% %%--------------------END FIGURE 5-case 5----------------------------------
%% FIGURE 5-case 6
% %%--------------------------FIGURE 5-case 6---------------------------------
% fig=5; cur=6;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=3;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=4;
% muB=1;
% muE=3;
% m=5;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 2;
% tau = 2^(Rs);
% %%--------------------END FIGURE 5-case 6----------------------------------
%% FIGURE 5-case 7
% %%--------------------------FIGURE 5-case 7---------------------------------
% fig=5; cur=7;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=3;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=4;
% muB=1;
% muE=4;
% m=5;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 2;
% tau = 2^(Rs);
% %%--------------------END FIGURE 5-case 7----------------------------------
%% FIGURE 5-case 8
% %%--------------------------FIGURE 5-case 8---------------------------------
% fig=5; cur=8;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=3;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=4;
% muB=1;
% muE=5;
% m=5;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 2;
% tau = 2^(Rs);
% %%--------------------END FIGURE 5-case
%%---------------------------------

%% FIGURE 7 (Probability of strictly positive secrecy capacity-SPSC)
%% FIGURE 7-case 1
% %%--------------------------FIGURE 7-case 1---------------------------------
% fig=7; cur=1;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=1;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=1.5;
% muB=2;
% muE=2;
% m=1;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 0;
% tau = 2^(Rs);
% %%--------------------END FIGURE 7-case 1----------------------------------

%% FIGURE 7-case 2
% %%--------------------------FIGURE 7-case 2---------------------------------
% fig=7; cur=2;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=1.5;
% muB=2;
% muE=2;
% m=1;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 0;
% tau = 2^(Rs);
% %%--------------------END FIGURE 7-case 2----------------------------------

%% FIGURE 7-case 3
% %%--------------------------FIGURE 7-case 3---------------------------------
fig=7; cur=3;
NA=2;         % number of antennas at Alice (transmissor)
NB=3;         % number of antennas at Bob (legitimate receiver)
NE=2;         % number of antennas at Eve (eavesdropper receiver)
%%------------ Set the fading paramters of the kappa mu shadowed channel----
kappa=1.5;
muB=2;
muE=2;
m=1;
Omega=1;
hb=zeros(NA,NB,Nsim);
he=zeros(NA,NE,Nsim);
%%------------ secrecy threshold------------------------------------------
Rs = 0;
tau = 2^(Rs);
% %%--------------------END FIGURE 7-case 3----------------------------------

%% FIGURE 7-case 4
% %%--------------------------FIGURE 7-case 4---------------------------------
% fig=7; cur=4;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=1;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
%%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=1.5;
% muB=1;
% muE=1;
% m=4;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
%%------------ secrecy threshold------------------------------------------
% Rs = 0;
% tau = 2^(Rs);
% %%--------------------END FIGURE 7-case 4----------------------------------

%% FIGURE 7-case 5
% %%--------------------------FIGURE 7-case 5---------------------------------
% fig=7; cur=5;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=1.5;
% muB=1;
% muE=1;
% m=4;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 0;
% tau = 2^(Rs);
% %%--------------------END FIGURE 7-case 5----------------------------------

%% FIGURE 7-case 6
% %%--------------------------FIGURE 7-case 6---------------------------------
% fig=7; cur=6;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=3;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=1.5;
% muB=1;
% muE=1;
% m=4;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%------------ secrecy threshold------------------------------------------
% Rs = 0;
% tau = 2^(Rs);
% %%--------------------END FIGURE 7-case 6----------------------------------


%% MONTE CARLO SIMULATIONS
%---------------- SNR values ---------------------------------------------
snrdBMax = 40;
snrdBMin = -5;
dBgamma0b = snrdBMin:3:snrdBMax; 
gb0 = 10.^(dBgamma0b/10);
L=length(gb0);
asc_sim = zeros(Nsim,L); 
sop_sim = zeros(1,L); 
spsc_sim=zeros(1,L);
%------------ mean power at Eve-------------------------------------------
if Rs>0
%%-------------FOR SOP METRIC----------------------------------------------    
    dBgamma0e=8;
    ge0 = 10^(dBgamma0e/10);
else
%%-------------FOR SPSC METRIC----------------------------------------------    
   if (cur>0 && cur<4)
        dBgamma0e=-5;
        ge0 = 10^(dBgamma0e/10);
   else
        dBgamma0e=5;
        ge0 = 10^(dBgamma0e/10);
   end
end
%--------------------Loop-------------------------------------------------
for i=1:Nsim
    hb=zeros(NA,NB,L);
    he=zeros(NA,NE,L);
%---------------Channel Matrix for the legitimate channel------------------    
    for jj=1:NA
        for ii=1:NB
         hb(jj,ii,:)=channelCoeffKappaMuShadowed(kappa, muB, m, Omega, L);
        end
    end
%---------------Channel Matrix for the eavesdropper channel----------------    
    for jj=1:NA
        for ii=1:NE
         he(jj,ii,:)=channelCoeffKappaMuShadowed(kappa, muE, m, Omega, L);
        end
    end   
    
    
if NA>1
%----Transmit Antenna Selection (TAS) selection------------------------------     
    [~,indexTAS] = max(sum(hb.^2,2));

    for ind=1:L
%---Maximal Ratio Combining (MRC) process------------------------------------   
        gBobeq_tas_mrc(ind) =  sum(hb(indexTAS(ind),:,ind).^2,2);  %sums of squared Bob's SNRs 
        gEveeq_tas_mrc(ind) =  sum(he(indexTAS(ind),:,ind).^2,2);  %sums of squared Eve's SNRs    
    end
else
    for ind=1:L
%---Maximal Ratio Combining (MRC) process------------------------------------   
        gBobeq_tas_mrc(ind) =  sum(hb(:,:,ind).^2,2); %sums of squared Bob's SNRs  
        gEveeq_tas_mrc(ind) =  sum(he(:,:,ind).^2,2); %sums of squared Eve's SNRs   
    end
end
  
%---------Compute the SNR for Bob and Eve ----------------------------------
    SNRbobSIM = gb0.*gBobeq_tas_mrc;
    SNReveSIM = ge0.*gEveeq_tas_mrc;

    
 if Rs>0
 %---------Compute the secrecy outage probability----------------------------   
    aux = ((1+ SNRbobSIM)./(1+SNReveSIM))<tau;
    sop_sim=sop_sim+aux;
 else
%---------Compute the probability of spsc-------------------------------------        
    aux = ((1+ SNRbobSIM)./(1+SNReveSIM))>tau;
    spsc_sim=spsc_sim+aux;
 end   
    
end
 
if Rs>0
%--------Calculate the secrecy outage probability----------------------------
sop_sim_Total=sop_sim/Nsim;
else
%---------Compute the probability of spsc-------------------------------------       
spsc_sim_Total=spsc_sim/Nsim;
end


%% SAVE THE RESULTS
%% FIGURE 2 (These results are plotted in Figure2.m)
% %%-------------------------FIGURE 2 case 1---------------------------------
%plsCase1V2MC=sop_sim_Total;
% save('plsCase1Fig2.mat','plsCase1V2MC','dBgamma0b');
% %%-------------------------FIGURE 2 case 2---------------------------------
%plsCase2V2MC=sop_sim_Total;
% save('plsCase2Fig2.mat','plsCase2V2MC','dBgamma0b');
% %%-------------------------FIGURE 2 case 3---------------------------------
%plsCase3V2MC=sop_sim_Total;
% save('plsCase3Fig2.mat','plsCase3V2MC','dBgamma0b');
% %%-------------------------FIGURE 2 case 4---------------------------------
%plsCase4V2MC=sop_sim_Total;
% save('plsCase4Fig2.mat','plsCase4V2MC','dBgamma0b');

%% FIGURE 3 (These results are plotted in Figure3.m)
% %%-------------------------FIGURE 3 case 1---------------------------------
%plsCase1MCFig3=sop_sim_Total;
% save('plsCase1Fig3MC.mat','plsCase1MCFig3','dBgamma0b');
% %%-------------------------FIGURE 3 case 2---------------------------------
%plsCase2MCFig3=sop_sim_Total;
% save('plsCase2Fig3MC.mat','plsCase2MCFig3','dBgamma0b');
% %%-------------------------FIGURE 3 case 3---------------------------------
%plsCase3MCFig3=sop_sim_Total;
% save('plsCase3Fig3MC.mat','plsCase3MCFig3','dBgamma0b');
% %%-------------------------FIGURE 3 case 4---------------------------------
%plsCase4MCFig3=sop_sim_Total;
% save('plsCase4Fig3MC.mat','plsCase4MCFig3','dBgamma0b');
% %%-------------------------FIGURE 3 case 5---------------------------------
%plsCase5MCFig3=sop_sim_Total;
% save('plsCase5Fig3MC.mat','plsCase5MCFig3','dBgamma0b');
% %%-------------------------FIGURE 3 case 6---------------------------------
%plsCase6MCFig3=sop_sim_Total;
% save('plsCase6Fig3MC.mat','plsCase6MCFig3','dBgamma0b');
% %%-------------------------FIGURE 3 case 7---------------------------------
%plsCase7MCFig3=sop_sim_Total;
% save('plsCase7Fig3MC.mat','plsCase7MCFig3','dBgamma0b');
% %%-------------------------FIGURE 3 case 8---------------------------------
%plsCase8MCFig3=sop_sim_Total;
% save('plsCase8Fig3MC.mat','plsCase8MCFig3','dBgamma0b');

%% FIGURE 4 (These results are plotted in Figure4.m)
% %%-------------------------FIGURE 4 case 1---------------------------------
%plsCase1MCFig4=sop_sim_Total;
% save('plsCase1Fig4MC.mat','plsCase1MCFig4','dBgamma0b');
% %%-------------------------FIGURE 4 case 2---------------------------------
%plsCase2MCFig4=sop_sim_Total;
% save('plsCase2Fig4MC.mat','plsCase2MCFig4','dBgamma0b');
% %%-------------------------FIGURE 4 case 3---------------------------------
%plsCase3MCFig4=sop_sim_Total;
% save('plsCase3Fig4MC.mat','plsCase3MCFig4','dBgamma0b');
% %%-------------------------FIGURE 4 case 4---------------------------------
%plsCase4MCFig4=sop_sim_Total;
% save('plsCase4Fig4MC.mat','plsCase4MCFig4','dBgamma0b');
% %%-------------------------FIGURE 4 case 5---------------------------------
%plsCase5MCFig4=sop_sim_Total;
% save('plsCase5Fig4MC.mat','plsCase5MCFig4','dBgamma0b');
% %%-------------------------FIGURE 4 case 6---------------------------------
%plsCase6MCFig4=sop_sim_Total;
% save('plsCase6Fig4MC.mat','plsCase6MCFig4','dBgamma0b');
% %%-------------------------FIGURE 4 case 7---------------------------------
%plsCase7MCFig4=sop_sim_Total;
% save('plsCase7Fig4MC.mat','plsCase7MCFig4','dBgamma0b');
% %%-------------------------FIGURE 4 case 8---------------------------------
%plsCase8MCFig4=sop_sim_Total;
% save('plsCase8Fig4MC.mat','plsCase8MCFig4','dBgamma0b');

%% FIGURE 5 (These results are plotted in Figure5.m)
% %%-------------------------FIGURE 5 case 1---------------------------------
%plsCase1MCFig5=sop_sim_Total
% save('plsCase1Fig5MC.mat','plsCase1MCFig5','dBgamma0b');
% %%-------------------------FIGURE 5 case 2---------------------------------
%plsCase2MCFig5=sop_sim_Total
% save('plsCase2Fig5MC.mat','plsCase2MCFig5','dBgamma0b');
% %%-------------------------FIGURE 5 case 3---------------------------------
%plsCase3MCFig5=sop_sim_Total
% save('plsCase3Fig5MC.mat','plsCase3MCFig5','dBgamma0b');
% %%-------------------------FIGURE 5 case 4---------------------------------
%plsCase4MCFig5=sop_sim_Total
% save('plsCase4Fig5MC.mat','plsCase4MCFig5','dBgamma0b');
% %%-------------------------FIGURE 5 case 5---------------------------------
%plsCase5MCFig5=sop_sim_Total
% save('plsCase5Fig5MC.mat','plsCase5MCFig5','dBgamma0b');
% %%-------------------------FIGURE 5 case 6---------------------------------
%plsCase6MCFig5=sop_sim_Total
% save('plsCase6Fig5MC.mat','plsCase6MCFig5','dBgamma0b');
% %%-------------------------FIGURE 5 case 7---------------------------------
%plsCase7MCFig5=sop_sim_Total
% save('plsCase7Fig5MC.mat','plsCase7MCFig5','dBgamma0b');
% %%-------------------------FIGURE 5 case 8---------------------------------
%plsCase8MCFig5=sop_sim_Total
% save('plsCase8Fig5MC.mat','plsCase8MCFig5','dBgamma0b');
%% FIGURE 7 (These results are plotted in Figure7.m)
% %%-------------------------FIGURE 7 curve 1---------------------------------
%spscMCcase1Fig7=spsc_sim_Total;
% save('MCspsccase1Fig7.mat','spscMCcase1Fig7','dBgamma0b');
% %%-------------------------FIGURE 7 curve 2---------------------------------
%spscMCcase2Fig7=spsc_sim_Total;
% save('MCspsccase2Fig7.mat','spscMCcase2Fig7','dBgamma0b');
% %%-------------------------FIGURE 7 curve 3---------------------------------
%spscMCcase3Fig7=spsc_sim_Total;
% save('MCspsccase3Fig7.mat','spscMCcase3Fig7','dBgamma0b');
% %%-------------------------FIGURE 7 curve 4---------------------------------
%spscMCcase4Fig7=spsc_sim_Total;
% save('MCspsccase4Fig7.mat','spscMCcase4Fig7','dBgamma0b');
% %%-------------------------FIGURE 7 curve 5---------------------------------
%spscMCcase5Fig7=spsc_sim_Total;
% save('MCspsccase5Fig7.mat','spscMCcase5Fig7','dBgamma0b');
% %%-------------------------FIGURE 7 curve 6---------------------------------
%spscMCcase6Fig7=spsc_sim_Total;
% save('MCspsccase6Fig7.mat','spscMCcase6Fig7','dBgamma0b');

%% plot CURRENT CURVE
figure;
if Rs>0
semilogy(dBgamma0b,sop_sim_Total,'k');
ylabel('SOP');
axis([5,40,1/Nsim,1])
else 
plot(dBgamma0b,spsc_sim_Total,'k');
ylabel('Probability of SPSC');
axis([-5,15,10^(-59),1.00001])
xticks(-5:5:40)
yticks(1e-9:0.25:1.25)
end
titulo = ['Figure ' num2str(fig),' Curve ',num2str(cur),' of Paper'];
xlabel({'$\overline{\gamma}_\mathrm{B}$ (dB)'},'Interpreter','latex','FontSize',14,'fontname','times')
title(titulo);
grid on;
toc;


%% Channel Function
%-------Channel coefficientes generation for Kappa mu shadowed model-------
function [R] = channelCoeffKappaMuShadowed(kappa, mu, m, Omega, N)
%------- Generate alpha KMS random samples with Omega_s = E[R^alpha] = 1---
    sigma2_1=1/(2*mu*(1+kappa));
    p1=sqrt(kappa*sigma2_1)*sqrt(gamrnd(m,1/m*ones(1,N)));
    sigma_1=sqrt(sigma2_1);
    gSim=zeros(1,N);
    for i=1:mu
        gSim=gSim+((normrnd(zeros(1,N),sigma_1))+p1).^2+((normrnd(zeros(1,N),sigma_1))+p1).^2;
    end
%------------- Recalculate Power to get Omega = E[R^2] = 1-----------------
    c = ((mu*kappa+m)^m*gamma(mu)/(m^m*gamma(mu+2/2)*...
        hypergeom([m (mu+2/2)],mu,mu*kappa/(mu*kappa+m))))^(2/2);
        Omega_s = Omega.^(2/2).* mu.*(1+kappa).*c;
    
%----------------------Power normalized amplitude--------------------------
    R=(Omega_s*gSim).^(1/2);
end



