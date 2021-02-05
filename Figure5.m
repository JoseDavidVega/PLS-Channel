%% Figure 5
clc;
clear;
close all;
format long
%% Proposed Approach
% All the data here was imported from the file named "SPSC_SOP_MatWolfram.nb", in the section
% "Figure 5 by varying \[Mu]b and \[Mu]e"
aux=load('.\Data\plsCase1Fig5.mat');
plscase1Fig5=aux.Expression1;
aux=load('.\Data\plsCase2Fig5.mat');
plscase2Fig5=aux.Expression1;
aux=load('.\Data\plsCase3Fig5.mat');
plscase3Fig5=aux.Expression1;
aux=load('.\Data\plsCase4Fig5.mat');
plscase4Fig5=aux.Expression1;
aux=load('.\Data\plsCase5Fig5.mat');
plscase5Fig5=aux.Expression1;
aux=load('.\Data\plsCase6Fig5.mat');
plscase6Fig5=aux.Expression1;
aux=load('.\Data\plsCase7Fig5.mat');
plscase7Fig5=aux.Expression1;
aux=load('.\Data\plsCase8Fig5.mat');
plscase8Fig5=aux.Expression1;
%% Monte Carlo Simulations
% All the data here was imported from the file named "SPSC_SOP_MCSimulations.m".
%specifically, by uncommenting the all section "FIGURE 5"
aux=load('.\Data\plsCase1Fig5MC.mat');
plscase1Fig5MC(:,1)=aux.dBgamma0b; plscase1Fig5MC(:,2)=aux.plsCase1MCFig5;
aux=load('.\Data\plsCase2Fig5MC.mat');
plscase2Fig5MC(:,1)=aux.dBgamma0b; plscase2Fig5MC(:,2)=aux.plsCase2MCFig5;
aux=load('.\Data\plsCase3Fig5MC.mat');
plscase3Fig5MC(:,1)=aux.dBgamma0b; plscase3Fig5MC(:,2)=aux.plsCase3MCFig5;
aux=load('.\Data\plsCase4Fig5MC.mat');
plscase4Fig5MC(:,1)=aux.dBgamma0b; plscase4Fig5MC(:,2)=aux.plsCase4MCFig5;
aux=load('.\Data\plsCase5Fig5MC.mat');
plscase5Fig5MC(:,1)=aux.dBgamma0b; plscase5Fig5MC(:,2)=aux.plsCase5MCFig5;
aux=load('.\Data\plsCase6Fig5MC.mat');
plscase6Fig5MC(:,1)=aux.dBgamma0b; plscase6Fig5MC(:,2)=aux.plsCase6MCFig5;
aux=load('.\Data\plsCase7Fig5MC.mat');
plscase7Fig5MC(:,1)=aux.dBgamma0b; plscase7Fig5MC(:,2)=aux.plsCase7MCFig5;
aux=load('.\Data\plsCase8Fig5MC.mat');
plscase8Fig5MC(:,1)=aux.dBgamma0b; plscase8Fig5MC(:,2)=aux.plsCase8MCFig5;
%% Plots
figure(5);
%Proposed approach

semilogy(plscase1Fig5(:,1),plscase1Fig5(:,2),'k', 'MarkerSize',7);
hold on;
semilogy(plscase1Fig5MC(:,1),plscase1Fig5MC(:,2),'ok', 'MarkerSize',5);
semilogy(plscase2Fig5(:,1),plscase2Fig5(:,2),'k','MarkerSize',7);
semilogy(plscase3Fig5(:,1),plscase3Fig5(:,2),'k','MarkerSize',7);
semilogy(plscase4Fig5(:,1),plscase4Fig5(:,2),'k','MarkerSize',7);
semilogy(plscase5Fig5(:,1),plscase5Fig5(:,2),'-.k','MarkerSize',7);
semilogy(plscase6Fig5(:,1),plscase6Fig5(:,2),'-.k','MarkerSize',7);
semilogy(plscase7Fig5(:,1),plscase7Fig5(:,2),'-.k','MarkerSize',7);
semilogy(plscase8Fig5(:,1),plscase8Fig5(:,2),'-.k','MarkerSize',7);



% Monte Carlo Simulations
semilogy(plscase2Fig5MC(:,1),plscase2Fig5MC(:,2),'ok', 'MarkerSize',5);
semilogy(plscase3Fig5MC(:,1),plscase3Fig5MC(:,2),'ok', 'MarkerSize',5);
semilogy(plscase4Fig5MC(:,1),plscase4Fig5MC(:,2),'ok', 'MarkerSize',5);
semilogy(plscase5Fig5MC(:,1),plscase5Fig5MC(:,2),'ok', 'MarkerSize',5);
semilogy(plscase6Fig5MC(:,1),plscase6Fig5MC(:,2),'ok', 'MarkerSize',5);
semilogy(plscase7Fig5MC(:,1),plscase7Fig5MC(:,2),'ok', 'MarkerSize',5);
semilogy(plscase8Fig5MC(:,1),plscase8Fig5MC(:,2),'ok', 'MarkerSize',5);


axis([5,40,1e-8,1])
xticks(0:5:40)
 set(gca,'FontSize',15,'fontname','times','LineWidth',1)
 ylabel('Secrecy Outage Probability','FontSize',14,'fontname','times');
 xlabel({'$\overline{\gamma}_\mathrm{B}$ (dB)'},'Interpreter','latex','FontSize',16,'fontname','times')
 a=legend({'$\mu_\mathrm{E} = 1$','$\mu_\mathrm{B} = 1$','$\mathrm{Simulation}$'}, ...
     'Interpreter','latex','FontSize',10,'fontname','times','Location','southwest');
 grid on;

