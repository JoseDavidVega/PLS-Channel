%% Figure 4
clc;
clear;
close all;
format long
%% Proposed Approach
% All the data here was imported from the file named "SPSC_SOP_MatWolfram.nb", in the section
% "Figure 4  by varying NB, NE=2, NA=2"
aux=load('.\Data\plsCase1Fig4.mat');
plscase1Fig4=aux.Expression1;
aux=load('.\Data\plsCase2Fig4.mat');
plscase2Fig4=aux.Expression1;
aux=load('.\Data\plsCase3Fig4.mat');
plscase3Fig4=aux.Expression1;
aux=load('.\Data\plsCase4Fig4.mat');
plscase4Fig4=aux.Expression1;
aux=load('.\Data\plsCase5Fig4.mat');
plscase5Fig4=aux.Expression1;
aux=load('.\Data\plsCase6Fig4.mat');
plscase6Fig4=aux.Expression1;
aux=load('.\Data\plsCase7Fig4.mat');
plscase7Fig4=aux.Expression1;
aux=load('.\Data\plsCase8Fig4.mat');
plscase8Fig4=aux.Expression1;
%% Monte Carlo Simulations
% All the data here was imported from the file named "SPSC_SOP_MCSimulations.m".
%specifically, by uncommenting the all section "FIGURE 4"
aux=load('.\Data\plsCase1Fig4MC.mat');
plscase1Fig4MC(:,1)=aux.dBgamma0b; plscase1Fig4MC(:,2)=aux.plsCase1MCFig4;
aux=load('.\Data\plsCase2Fig4MC.mat');
plscase2Fig4MC(:,1)=aux.dBgamma0b; plscase2Fig4MC(:,2)=aux.plsCase2MCFig4;
aux=load('.\Data\plsCase3Fig4MC.mat');
plscase3Fig4MC(:,1)=aux.dBgamma0b; plscase3Fig4MC(:,2)=aux.plsCase3MCFig4;
aux=load('.\Data\plsCase4Fig4MC.mat');
plscase4Fig4MC(:,1)=aux.dBgamma0b; plscase4Fig4MC(:,2)=aux.plsCase4MCFig4;
aux=load('.\Data\plsCase5Fig4MC.mat');
plscase5Fig4MC(:,1)=aux.dBgamma0b; plscase5Fig4MC(:,2)=aux.plsCase5MCFig4;
aux=load('.\Data\plsCase6Fig4MC.mat');
plscase6Fig4MC(:,1)=aux.dBgamma0b; plscase6Fig4MC(:,2)=aux.plsCase6MCFig4;
aux=load('.\Data\plsCase7Fig4MC.mat');
plscase7Fig4MC(:,1)=aux.dBgamma0b; plscase7Fig4MC(:,2)=aux.plsCase7MCFig4;
aux=load('.\Data\plsCase8Fig4MC.mat');
plscase8Fig4MC(:,1)=aux.dBgamma0b; plscase8Fig4MC(:,2)=aux.plsCase8MCFig4;
%% Plots
figure(4);
%Monte Carlo simulations
semilogy(plscase7Fig4MC(:,1),plscase7Fig4MC(:,2),'sb', 'MarkerSize',7);
hold on;
semilogy(plscase1Fig4MC(:,1),plscase1Fig4MC(:,2),'or', 'MarkerSize',6);
semilogy(plscase3Fig4MC(:,1),plscase3Fig4MC(:,2),'xg', 'MarkerSize',7);
semilogy(plscase5Fig4MC(:,1),plscase5Fig4MC(:,2),'+m','MarkerSize',7);

semilogy(plscase1Fig4(:,1),plscase1Fig4(:,2),'k', 'MarkerSize',7);
semilogy(plscase2Fig4(:,1),plscase2Fig4(:,2),'-.k', 'MarkerSize',7);

semilogy(plscase8Fig4MC(:,1),plscase8Fig4MC(:,2),'sb', 'MarkerSize',7);
semilogy(plscase2Fig4MC(:,1),plscase2Fig4MC(:,2),'or', 'MarkerSize',6);
semilogy(plscase4Fig4MC(:,1),plscase4Fig4MC(:,2),'xg', 'MarkerSize',7);
semilogy(plscase6Fig4MC(:,1),plscase6Fig4MC(:,2),'+m','MarkerSize',7);
%Proposed Approach

semilogy(plscase3Fig4(:,1),plscase3Fig4(:,2),'k', 'MarkerSize',7);
semilogy(plscase4Fig4(:,1),plscase4Fig4(:,2),'-.k', 'MarkerSize',7);
semilogy(plscase5Fig4(:,1),plscase5Fig4(:,2),'k', 'MarkerSize',7);
semilogy(plscase6Fig4(:,1),plscase6Fig4(:,2),'-.k', 'MarkerSize',7);
semilogy(plscase7Fig4(:,1),plscase7Fig4(:,2),'k', 'MarkerSize',7);
semilogy(plscase8Fig4(:,1),plscase8Fig4(:,2),'-.k', 'MarkerSize',7);

axis([5,40,1e-8,1])
xticks(0:5:40)
 set(gca,'FontSize',15,'fontname','times','LineWidth',1)
 ylabel('Secrecy Outage Probability','FontSize',14,'fontname','times');
 xlabel({'$\overline{\gamma}_\mathrm{B}$ (dB)'},'Interpreter','latex','FontSize',16,'fontname','times')
 a=legend({'$N_\mathrm{B} = 1$','$N_\mathrm{B} = 2$','$N_\mathrm{B} = 3$', ...
     '$N_\mathrm{B} = 4$','$\kappa_\mathrm{B} = \kappa_\mathrm{E} = 1.5$','$\kappa_\mathrm{B} = \kappa_\mathrm{E} = 10$'}, ...
     'Interpreter','latex','FontSize',10,'fontname','times','Location','southwest');
 grid on;

