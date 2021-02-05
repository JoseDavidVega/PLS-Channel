%% Figure 9
clc;
clear;
close all;
%% Proposed Approach
% All the data here was imported from the file named "ASC_MatWolfram.nb", in the section
% "Figure 9 (by varying the number of antennas at the legitimate receiver Bob-NB)"
aux=load('.\Data\ascApproachCase1Fig9.mat');
ascApproachcase1Fig9=aux.Expression1;
aux=load('.\Data\ascApproachCase2Fig9.mat');
ascApproachcase2Fig9=aux.Expression1;
aux=load('.\Data\ascApproachCase3Fig9.mat');
ascApproachcase3Fig9=aux.Expression1;
aux=load('.\Data\ascApproachCase4Fig9.mat');
ascApproachcase4Fig9=aux.Expression1;
aux=load('.\Data\ascApproachCase5Fig9.mat');
ascApproachcase5Fig9=aux.Expression1;
aux=load('.\Data\ascApproachCase6Fig9.mat');
ascApproachcase6Fig9=aux.Expression1;
aux=load('.\Data\ascApproachCase7Fig9.mat');
ascApproachcase7Fig9=aux.Expression1;
aux=load('.\Data\ascApproachCase8Fig9.mat');
ascApproachcase8Fig9=aux.Expression1;



%% MONTE CARLO SIMULATIONS
% All the data here was imported from the file named "ASC_MCSimulations.m", in the sub-section
% "Figure 9 case x, where x={1,2,3,4,5,6,7,8}. For more details, go to ASCMCSimulations.m file "
aux=load('.\Data\ascMonteCarloCase1Fig9.mat');
ascMCcase1Fig9(:,1)=aux.dBgamma0b; ascMCcase1Fig9(:,2)=aux.ascCase1Fig8MC;
aux=load('.\Data\ascMonteCarloCase2Fig9.mat');
ascMCcase2Fig9(:,1)=aux.dBgamma0b; ascMCcase2Fig9(:,2)=aux.ascCase2Fig8MC;
aux=load('.\Data\ascMonteCarloCase3Fig9.mat');
ascMCcase3Fig9(:,1)=aux.dBgamma0b; ascMCcase3Fig9(:,2)=aux.ascCase3Fig8MC;
aux=load('.\Data\ascMonteCarloCase4Fig9.mat');
ascMCcase4Fig9(:,1)=aux.dBgamma0b; ascMCcase4Fig9(:,2)=aux.ascCase4Fig8MC;
aux=load('.\Data\ascMonteCarloCase5Fig9.mat');
ascMCcase5Fig9(:,1)=aux.dBgamma0b; ascMCcase5Fig9(:,2)=aux.ascCase5Fig8MC;
aux=load('.\Data\ascMonteCarloCase6Fig9.mat');
ascMCcase6Fig9(:,1)=aux.dBgamma0b; ascMCcase6Fig9(:,2)=aux.ascCase6Fig8MC;
aux=load('.\Data\ascMonteCarloCase7Fig9.mat');
ascMCcase7Fig9(:,1)=aux.dBgamma0b; ascMCcase7Fig9(:,2)=aux.ascCase7Fig8MC;
aux=load('.\Data\ascMonteCarloCase8Fig9.mat');
ascMCcase8Fig9(:,1)=aux.dBgamma0b; ascMCcase8Fig9(:,2)=aux.ascCase8Fig8MC;


%% Asymptotic Proposed Approach
% All the data here was imported from the file named "ASC_MatWolfram.nb", in the section
% "Figure 8 (by varying the number of antennas at the legitimate receiver Bob-NB)"
aux=load('.\Data\ascApproachCase1Fig9Asymp.mat');
ascApproachcase1Fig9Asymp=aux.Expression1;
aux=load('.\Data\ascApproachCase2Fig9Asymp.mat');
ascApproachcase2Fig9Asymp=aux.Expression1;
aux=load('.\Data\ascApproachCase3Fig9Asymp.mat');
ascApproachcase3Fig9Asymp=aux.Expression1;
aux=load('.\Data\ascApproachCase4Fig9Asymp.mat');
ascApproachcase4Fig9Asymp=aux.Expression1;
aux=load('.\Data\ascApproachCase5Fig9Asymp.mat');
ascApproachcase5Fig9Asymp=aux.Expression1;
aux=load('.\Data\ascApproachCase6Fig9Asymp.mat');
ascApproachcase6Fig9Asymp=aux.Expression1;
aux=load('.\Data\ascApproachCase7Fig9Asymp.mat');
ascApproachcase7Fig9Asymp=aux.Expression1;
aux=load('.\Data\ascApproachCase8Fig9Asymp.mat');
ascApproachcase8Fig9Asymp=aux.Expression1;



%% Plots
figure(9);
%Monte Carlo curves
plot(ascMCcase1Fig9(:,1),ascMCcase1Fig9(:,2),'sb', 'MarkerSize',7);
hold on;
plot(ascMCcase3Fig9(:,1),ascMCcase3Fig9(:,2),'or', 'MarkerSize',6);
plot(ascMCcase5Fig9(:,1),ascMCcase5Fig9(:,2),'xg', 'MarkerSize',7);
plot(ascMCcase7Fig9(:,1),ascMCcase7Fig9(:,2),'+m','MarkerSize',7);

plot(ascApproachcase1Fig9(:,1),ascApproachcase1Fig9(:,2),'k', 'MarkerSize',7);
plot(ascApproachcase2Fig9(:,1),ascApproachcase2Fig9(:,2),'-.k', 'MarkerSize',6);
plot(ascApproachcase1Fig9Asymp(:,1),ascApproachcase1Fig9Asymp(:,2),'--','Color',[0.1 0 0],'LineWidth',1);

%Proposed Approach
plot(ascApproachcase3Fig9(:,1),ascApproachcase3Fig9(:,2),'k', 'MarkerSize',7);
plot(ascApproachcase4Fig9(:,1),ascApproachcase4Fig9(:,2),'-.k', 'MarkerSize',6);
plot(ascApproachcase5Fig9(:,1),ascApproachcase5Fig9(:,2),'k', 'MarkerSize',7);
plot(ascApproachcase6Fig9(:,1),ascApproachcase6Fig9(:,2),'-.k', 'MarkerSize',6);
plot(ascApproachcase7Fig9(:,1),ascApproachcase7Fig9(:,2),'k', 'MarkerSize',7);
plot(ascApproachcase8Fig9(:,1),ascApproachcase8Fig9(:,2),'-.k', 'MarkerSize',6);

%Proposed asymptotic approach
plot(ascApproachcase2Fig9Asymp(:,1),ascApproachcase2Fig9Asymp(:,2),'--','Color',[0.1 0 0],'LineWidth',1);
plot(ascApproachcase3Fig9Asymp(:,1),ascApproachcase3Fig9Asymp(:,2),'--','Color',[0.1 0 0],'LineWidth',1);
plot(ascApproachcase4Fig9Asymp(:,1),ascApproachcase4Fig9Asymp(:,2),'--','Color',[0.1 0 0],'LineWidth',1);
plot(ascApproachcase5Fig9Asymp(:,1),ascApproachcase5Fig9Asymp(:,2),'--','Color',[0.1 0 0],'LineWidth',1);
plot(ascApproachcase6Fig9Asymp(:,1),ascApproachcase6Fig9Asymp(:,2),'--','Color',[0.1 0 0],'LineWidth',1);
plot(ascApproachcase7Fig9Asymp(:,1),ascApproachcase7Fig9Asymp(:,2),'--','Color',[0.1 0 0],'LineWidth',1);
plot(ascApproachcase8Fig9Asymp(:,1),ascApproachcase8Fig9Asymp(:,2),'--','Color',[0.1 0 0],'LineWidth',1);


axis([0,25,0,8])
xticks(0:5:25)
  set(gca,'FontSize',15,'fontname','times','LineWidth',1)
 ylabel('Average Secrecy Capacity (bits/s/Hz)','FontSize',14,'fontname','times');
 xlabel({'$\overline{\gamma}_\mathrm{B}$ (dB)'},'Interpreter','latex','FontSize',16,'fontname','times')
 a=legend({'$N_\mathrm{B} = 1$','$N_\mathrm{B} = 2$','$N_\mathrm{B} = 3$', ...
     '$N_\mathrm{B} = 4$','$\kappa_\mathrm{B} = \kappa_\mathrm{E} = 1.5$','$\kappa_\mathrm{B} = \kappa_\mathrm{E} = 10$','$\mathrm{Asymptotic}$'}, ...
     'Interpreter','latex','FontSize',10,'fontname','times','Location','northwest');
 grid on;
