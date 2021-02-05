%% Physical layer security for MIMO systems over kappa mu shadowed fading channel
clear 
close all
clc
tic;
%------------------Parameters of Monte Carlo Simulation-------------------
Nsim=1e3;     % number of samples

%--------------------------REEDME-----------------------------------------
% To generate the Monte Carlo (MC) simulation of each Figure of the paper,
% please uncomment the code. 
% For example, to generate the MC of Figure 8, uncomment all sections
% titled "FIGURE 8-case x, where x={1,2,3,4}".
%% FIGURE 8 (by varying the numbers of antennas at NA-transmitter, NB-legitimate receiver and NE-eavesdropper receiver ) 
%%--------------------------FIGURE 8-case 1---------------------------------
fig=8; cur=1; %flags
NA=2;         % number of antennas at Alice (transmissor)
NB=2;         % number of antennas at Bob (legitimate receiver)
NE=2;         % number of antennas at Eve (eavesdropper receiver)
%%------------ Set the fading paramters of the kappa mu shadowed channel----
kappa=5;
muB=2;
muE=2;
m=1;
Omega=1;
hb=zeros(NA,NB,Nsim);
he=zeros(NA,NE,Nsim);
%%--------------------END FIGURE 8-case 1----------------------------------

% %%--------------------------FIGURE 8-case 2---------------------------------
% fig=8; cur=2;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=5;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=5;
% muB=2;
% muE=2;
% m=1;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%--------------------END FIGURE 8-case 2----------------------------------

% %%--------------------------FIGURE 8-case 3---------------------------------
% fig=8; cur=3;
% NA=5;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=5;
% muB=2;
% muE=2;
% m=1;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%--------------------END FIGURE 8-case 3----------------------------------

% %%--------------------------FIGURE 8-case 4---------------------------------
% fig=8; cur=4;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=5;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=5;
% muB=2;
% muE=2;
% m=1;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%--------------------END FIGURE 8-case 4----------------------------------

%% Figure 9 (by varying the number of antennas at the legitimate receiver Bob->NB)

% %%--------------------------FIGURE 9-case 1---------------------------------
% fig=9; cur=1;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=1;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=1.5;
% muB=2;
% muE=2;
% m=2;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%--------------------END FIGURE 9-case 1----------------------------------

% %%--------------------------FIGURE 9-case 2---------------------------------
% fig=9; cur=2;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=1;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=10;
% muB=2;
% muE=2;
% m=2;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%--------------------END FIGURE 9-case 2----------------------------------

% %%--------------------------FIGURE 9-case 3---------------------------------
% fig=9; cur=3;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=1.5;
% muB=2;
% muE=2;
% m=2;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%--------------------END FIGURE 9-case 3----------------------------------

% %%--------------------------FIGURE 9-case 4---------------------------------
% fig=9; cur=4;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=2;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=10;
% muB=2;
% muE=2;
% m=2;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%--------------------END FIGURE 9-case 4----------------------------------


% %%--------------------------FIGURE 9-case 5---------------------------------
% fig=9; cur=5;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=3;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=1.5;
% muB=2;
% muE=2;
% m=2;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%--------------------END FIGURE 9-case 5----------------------------------

% %%--------------------------FIGURE 9-case 6---------------------------------
% fig=9; cur=6;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=3;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=10;
% muB=2;
% muE=2;
% m=2;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%--------------------END FIGURE 9-case 6----------------------------------


% %%--------------------------FIGURE 9-case 7---------------------------------
% fig=9; cur=7;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=4;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=1.5;
% muB=2;
% muE=2;
% m=2;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%--------------------END FIGURE 9-case 7----------------------------------

% %%--------------------------FIGURE 9-case 8---------------------------------
% fig=9; cur=8;
% NA=2;         % number of antennas at Alice (transmissor)
% NB=4;         % number of antennas at Bob (legitimate receiver)
% NE=2;         % number of antennas at Eve (eavesdropper receiver)
% %%------------ Set the fading paramters of the kappa mu shadowed channel----
% kappa=10;
% muB=2;
% muE=2;
% m=2;
% Omega=1;
% hb=zeros(NA,NB,Nsim);
% he=zeros(NA,NE,Nsim);
% %%--------------------END FIGURE 9-case 8----------------------------------

%% MONTE CARLO SIMULATIONS
%---------------- SNR values ---------------------------------------------
snrdBMax = 40;
snrdBMin = 0;
dBgamma0b = snrdBMin:3:snrdBMax; 
gb0 = 10.^(dBgamma0b/10);
L=length(gb0);
asc_sim = zeros(Nsim,L); 
%------------ mean power at Eve-------------------------------------------
dBgamma0e=8;
ge0 = 10^(dBgamma0e/10);

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
%---------Compute the SNR for Bob and Eve -------------------------------------
    SNRbobSIM = gb0.*gBobeq_tas_mrc;
    SNReveSIM = ge0.*gEveeq_tas_mrc;
%---------Compute the secrecy capacity-------------------------------------   
   asc_sim(i,:)=log2((1+SNRbobSIM)./(1+SNReveSIM));
    
 end
%--------Calculate the average secrecy capacity----------------------------
asc_sim_Total=mean(asc_sim);

%% SAVE THE RESULTS
%% FIGURE 8 (These results are plotted in Figure8.m)
% %%-------------------------FIGURE 8 case 1---------------------------------
% ascCase1Fig8MC=asc_sim_Total;
% save('ascMonteCarloCase1Fig8.mat','ascCase1Fig8MC','dBgamma0b');
% %%-------------------------FIGURE 8 case 2---------------------------------
% ascCase2Fig8MC=asc_sim_Total;
% save('ascMonteCarloCase2Fig8.mat','ascCase2Fig8MC','dBgamma0b');
% %%-------------------------FIGURE 8 case 3---------------------------------
% ascCase3Fig8MC=asc_sim_Total;
% save('ascMonteCarloCase3Fig8.mat','ascCase3Fig8MC','dBgamma0b');
% %%-------------------------FIGURE 8 case 4---------------------------------
% ascCase4Fig8MC=asc_sim_Total;
% save('ascMonteCarloCase4Fig8.mat','ascCase4Fig8MC','dBgamma0b');

%% FIGURE 9 (These results are plotted in Figure9.m)
% %%-------------------------FIGURE 9 case 1---------------------------------
% ascCase1Fig9MC=asc_sim_Total;
% save('ascMonteCarloCase1Fig9.mat','ascCase1Fig9MC','dBgamma0b');
% %%-------------------------FIGURE 9 case 2---------------------------------
% ascCase2Fig9MC=asc_sim_Total;
% save('ascMonteCarloCase2Fig9.mat','ascCase2Fig9MC','dBgamma0b');
% %%-------------------------FIGURE 9 case 3---------------------------------
% ascCase3Fig9MC=asc_sim_Total;
% save('ascMonteCarloCase3Fig9.mat','ascCase3Fig9MC','dBgamma0b');
% %%-------------------------FIGURE 9 case 4---------------------------------
% ascCase4Fig9MC=asc_sim_Total;
% save('ascMonteCarloCase4Fig9.mat','ascCase4Fig9MC','dBgamma0b');
% %%-------------------------FIGURE 9 case 5---------------------------------
% ascCase5Fig9MC=asc_sim_Total;
% save('ascMonteCarloCase5Fig9.mat','ascCase5Fig9MC','dBgamma0b');
% %%-------------------------FIGURE 9 case 6---------------------------------
% ascCase6Fig9MC=asc_sim_Total;
% save('ascMonteCarloCase6Fig9.mat','ascCase6Fig9MC','dBgamma0b');
% %%-------------------------FIGURE 9 case 7---------------------------------
% ascCase7Fig9MC=asc_sim_Total;
% save('ascMonteCarloCase7Fig9.mat','ascCase7Fig9MC','dBgamma0b');
% %%-------------------------FIGURE 9 case 8---------------------------------
% ascCase8Fig9MC=asc_sim_Total;
% save('ascMonteCarloCase8Fig9.mat','ascCase8Fig9MC','dBgamma0b');

%-------------------------CURRENT FIGURE-----------------------------------------
figure;
plot(dBgamma0b,asc_sim_Total,'k');
axis([0,25,0,8])
xticks(0:5:25)
ylabel('Average Secrecy Capacity (bits/s/Hz)','FontSize',14,'fontname','times');
 xlabel({'$\overline{\gamma}_\mathrm{B}$ (dB)'},'Interpreter','latex','FontSize',16,'fontname','times')
 titulo = ['Figure ' num2str(fig),' Curve ',num2str(cur),' of Paper'];
 title(titulo);
grid on
toc;


%% FUNCTIONS
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



