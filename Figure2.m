%% Figure 2
clc;
clear;
close all;
format long
%% Proposed Approach
% All the data here was imported from the file named "SPSC_SOP_MatWolfram.nb", in the section
% "FIGURE 2 by varying NA, NB=2, NE=2  (Here, you can see the simulation times)"
aux=load('.\Data\plsCase1Fig2.mat');
plscase1Fig2=aux.Expression1;
aux=load('.\Data\plsCase2Fig2.mat');
plscase2Fig2=aux.Expression1;
aux=load('.\Data\plsCase3Fig2.mat');
plscase3Fig2=aux.Expression1;
aux=load('.\Data\plsCase4Fig2.mat');
plscase4Fig2=aux.Expression1;

%% Monte Carlo Simulations
% All the data here was imported from the file named "SPSC_SOP_MCSimulations.m".
%specifically, by uncommenting the all section "FIGURE 2"
aux=load('.\Data\plsCase1Fig2MC.mat');
plscase1Fig2MC(:,1)=aux.dBgamma0b; plscase1Fig2MC(:,2)=aux.plsCase1V2MC;
aux=load('.\Data\plsCase2Fig2MC.mat');
plscase2Fig2MC(:,1)=aux.dBgamma0b; plscase2Fig2MC(:,2)=aux.plsCase2V2MC;
aux=load('.\Data\plsCase3Fig2MC.mat');
plscase3Fig2MC(:,1)=aux.dBgamma0b; plscase3Fig2MC(:,2)=aux.plsCase3V2MC;
aux=load('.\Data\plsCase4Fig2MC.mat');
plscase4Fig2MC(:,1)=aux.dBgamma0b; plscase4Fig2MC(:,2)=aux.plsCase4V2MC;

%% Asymptotic Approach
% All the data here was imported from the file named "SPSC_SOP_MatWolfram.nb", in the section
% "FIGURE 2 by varying NA, NB=2, NE=2  (Here, you can see the simulation times)"
aux=load('.\Data\asymtCase1Fig2.mat');
plscase1Fig2asym=aux.Expression1;
aux=load('.\Data\asymtCase2Fig2.mat');
plscase2Fig2asym=aux.Expression1;
aux=load('.\Data\asymtCase3Fig2.mat');
plscase3Fig2asym=aux.Expression1;
aux=load('.\Data\asymtCase4Fig2.mat');
plscase4Fig2asym=aux.Expression1;

%% Plots
figure(1);
%MC simulations
semilogy(plscase1Fig2MC(:,1),plscase1Fig2MC(:,2),'sb', 'MarkerSize',7);
hold on
semilogy(plscase2Fig2MC(:,1),plscase2Fig2MC(:,2),'or', 'MarkerSize',6);
semilogy(plscase3Fig2MC(:,1),plscase3Fig2MC(:,2),'xg', 'MarkerSize',7);
semilogy(plscase4Fig2MC(:,1),plscase4Fig2MC(:,2),'+m','MarkerSize',7);

%Proposed approach
semilogy(plscase1Fig2(:,1),plscase1Fig2(:,2),'k')
semilogy(plscase1Fig2asym(:,1),plscase1Fig2asym(:,2),'--','Color',[0.1 0 0],'LineWidth',1);
semilogy(plscase2Fig2(:,1),plscase2Fig2(:,2),'k');
semilogy(plscase3Fig2(:,1),plscase3Fig2(:,2),'k');
semilogy(plscase4Fig2(:,1),plscase4Fig2(:,2),'k');

% asymptotic curves
semilogy(plscase2Fig2asym(:,1),plscase2Fig2asym(:,2),'--','Color',[0.1 0 0],'LineWidth',1);
semilogy(plscase3Fig2asym(:,1),plscase3Fig2asym(:,2),'--','Color',[0.1 0 0],'LineWidth',1);
semilogy(plscase4Fig2asym(:,1),plscase4Fig2asym(:,2),'--','Color',[0.1 0 0],'LineWidth',1);
axis([5,40,1e-12,1])
xticks(0:5:40)
 set(gca,'FontSize',15,'fontname','times','LineWidth',1)
 ylabel('Secrecy Outage Probability','FontSize',14,'fontname','times');
 xlabel({'$\overline{\gamma}_\mathrm{B}$ (dB)'},'Interpreter','latex','FontSize',16,'fontname','times')
 a=legend({'$N_\mathrm{A} = 1$','$N_\mathrm{A} = 2$', ...
     '$N_\mathrm{A} = 3$','$N_\mathrm{A} = 4$', ...
     '$\mathrm{Analytical}$','$\mathrm{Asymptotic}$'}, ...
     'Interpreter','latex','FontSize',10,'fontname','times','Location','southwest');
 grid on;


