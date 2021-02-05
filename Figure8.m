%% Figure 8
clc;
clear;
close all;
%% Proposed Approach
% All the data here was imported from the file named "ASC_MatWolfram.nb", in the section
% "Figure 8 (by varying the numbers of antennas at NA-transmitter, NB-legitimate receiver and NE-eavesdropper receiver )"
aux=load('.\Data\ascApproachCase1Fig8.mat');
ascApproachcase1Fig8=aux.Expression1;
aux=load('.\Data\ascApproachCase2Fig8.mat');
ascApproachcase2Fig8=aux.Expression1;
aux=load('.\Data\ascApproachCase3Fig8.mat');
ascApproachcase3Fig8=aux.Expression1;
aux=load('.\Data\ascApproachCase4Fig8.mat');
ascApproachcase4Fig8=aux.Expression1;


%% MONTE CARLO SIMULATIONS
% All the data here was imported from the file named "ASC_MCSimulations.m", in the sub-section
% "Figure 8 case x, where x={1,2,3,4} "
aux=load('.\Data\ascMonteCarloCase1Fig8.mat');
ascMCcase1Fig8(:,1)=aux.dBgamma0b; ascMCcase1Fig8(:,2)=aux.ascCase1Fig7MC;
aux=load('.\Data\ascMonteCarloCase2Fig8.mat');
ascMCcase2Fig8(:,1)=aux.dBgamma0b; ascMCcase2Fig8(:,2)=aux.ascCase2Fig7MC;
aux=load('.\Data\ascMonteCarloCase3Fig8.mat');
ascMCcase3Fig8(:,1)=aux.dBgamma0b; ascMCcase3Fig8(:,2)=aux.ascCase3Fig7MC;
aux=load('.\Data\ascMonteCarloCase4Fig8.mat');
ascMCcase4Fig8(:,1)=aux.dBgamma0b; ascMCcase4Fig8(:,2)=aux.ascCase4Fig7MC;

%% Asymptotic Proposed Approach
% All the data here was imported from the file named "ASCMatWolfram.nb", in the section
% "Figure 8 (by varying the numbers of antennas at NA-transmitter, NB-legitimate receiver and NE-eavesdropper receiver )"
aux=load('.\Data\ascApproachCase1Fig8Asymp.mat');
ascApproachcase1Fig8Asymp=aux.Expression1;
aux=load('.\Data\ascApproachCase2Fig8Asymp.mat');
ascApproachcase2Fig8Asymp=aux.Expression1;
aux=load('.\Data\ascApproachCase3Fig8Asymp.mat');
ascApproachcase3Fig8Asymp=aux.Expression1;
aux=load('.\Data\ascApproachCase4Fig8Asymp.mat');
ascApproachcase4Fig8Asymp=aux.Expression1;


%% Plots
figure(8);
%Monte Carlo curves
plot(ascMCcase1Fig8(:,1),ascMCcase1Fig8(:,2),'sb', 'MarkerSize',7);
hold on
plot(ascMCcase2Fig8(:,1),ascMCcase2Fig8(:,2),'or', 'MarkerSize',7);
plot(ascMCcase3Fig8(:,1),ascMCcase3Fig8(:,2),'xg','MarkerSize',7);
plot(ascMCcase4Fig8(:,1),ascMCcase4Fig8(:,2),'+m', 'MarkerSize',7);



%Proposed Approach
plot(ascApproachcase1Fig8(:,1),ascApproachcase1Fig8(:,2),'k', 'MarkerSize',7);
plot(ascApproachcase1Fig8Asymp(:,1),ascApproachcase1Fig8Asymp(:,2),'--','Color',[0.1 0 0],'LineWidth',1);
plot(ascApproachcase2Fig8(:,1),ascApproachcase2Fig8(:,2),'k', 'MarkerSize',7);
plot(ascApproachcase3Fig8(:,1),ascApproachcase3Fig8(:,2),'k', 'MarkerSize',7);
plot(ascApproachcase4Fig8(:,1),ascApproachcase4Fig8(:,2),'k', 'MarkerSize',7);

%Proposed asymptotic approach
plot(ascApproachcase2Fig8Asymp(:,1),ascApproachcase2Fig8Asymp(:,2),'--','Color',[0.1 0 0],'LineWidth',1);
plot(ascApproachcase3Fig8Asymp(:,1),ascApproachcase3Fig8Asymp(:,2),'--','Color',[0.1 0 0],'LineWidth',1);
plot(ascApproachcase4Fig8Asymp(:,1),ascApproachcase4Fig8Asymp(:,2),'--','Color',[0.1 0 0],'LineWidth',1);


axis([0,25,0,8])
xticks(0:5:25)
  set(gca,'FontSize',15,'fontname','times','LineWidth',1)
 ylabel('Average Secrecy Capacity (bits/s/Hz)','FontSize',14,'fontname','times');
 xlabel({'$\overline{\gamma}_\mathrm{B}$ (dB)'},'Interpreter','latex','FontSize',16,'fontname','times')
 a=legend({'$N_\mathrm{A} = N_\mathrm{B} =N_\mathrm{E} =2  $','$N_\mathrm{A} = N_\mathrm{E}=2, N_\mathrm{B}=5$','$N_\mathrm{B} =  N_\mathrm{E}=2, N_\mathrm{A}=5$', ...
     '$N_\mathrm{A} = N_\mathrm{B} =2, N_\mathrm{E} = 5$','$\mathrm{Analytical}$','$\mathrm{Asymptotic}$'}, ...
     'Interpreter','latex','FontSize',10,'fontname','times','Location','northwest');
 grid on;

