%% Figure 3
clc;
clear;
close all;
format long
%% Proposed Approach
% All the data here was imported from the file named "SPSC_SOP_MatWolfram.nb", in the section
% "FIGURE 3 by varying NE, NA=2, NE=2"
aux=load('.\Data\plsCase1Fig3.mat');
plscase1Fig3=aux.Expression1;
aux=load('.\Data\plsCase2Fig3.mat');
plscase2Fig3=aux.Expression1;
aux=load('.\Data\plsCase3Fig3.mat');
plscase3Fig3=aux.Expression1;
aux=load('.\Data\plsCase4Fig3.mat');
plscase4Fig3=aux.Expression1;
aux=load('.\Data\plsCase5Fig3.mat');
plscase5Fig3=aux.Expression1;
aux=load('.\Data\plsCase6Fig3.mat');
plscase6Fig3=aux.Expression1;
aux=load('.\Data\plsCase7Fig3.mat');
plscase7Fig3=aux.Expression1;
aux=load('.\Data\plsCase8Fig3.mat');
plscase8Fig3=aux.Expression1;
%% Monte Carlo Simulations
% All the data here was imported from the file named "SPSC_SOP_MCSimulations.m".
%specifically, by uncommenting the all section "FIGURE 3"
aux=load('.\Data\plsCase1Fig3MC.mat');
plscase1Fig3MC(:,1)=aux.dBgamma0b; plscase1Fig3MC(:,2)=aux.plsCase1MCFig3;
aux=load('.\Data\plsCase2Fig3MC.mat');
plscase2Fig3MC(:,1)=aux.dBgamma0b; plscase2Fig3MC(:,2)=aux.plsCase2MCFig3;
aux=load('.\Data\plsCase3Fig3MC.mat');
plscase3Fig3MC(:,1)=aux.dBgamma0b; plscase3Fig3MC(:,2)=aux.plsCase3MCFig3;
aux=load('.\Data\plsCase4Fig3MC.mat');
plscase4Fig3MC(:,1)=aux.dBgamma0b; plscase4Fig3MC(:,2)=aux.plsCase4MCFig3;
aux=load('.\Data\plsCase5Fig3MC.mat');
plscase5Fig3MC(:,1)=aux.dBgamma0b; plscase5Fig3MC(:,2)=aux.plsCase5MCFig3;
aux=load('.\Data\plsCase6Fig3MC.mat');
plscase6Fig3MC(:,1)=aux.dBgamma0b; plscase6Fig3MC(:,2)=aux.plsCase6MCFig3;
aux=load('.\Data\plsCase7Fig3MC.mat');
plscase7Fig3MC(:,1)=aux.dBgamma0b; plscase7Fig3MC(:,2)=aux.plsCase7MCFig3;
aux=load('.\Data\plsCase8Fig3MC.mat');
plscase8Fig3MC(:,1)=aux.dBgamma0b; plscase8Fig3MC(:,2)=aux.plsCase8MCFig3;
%% Plots
figure(1);
%MC simulations
semilogy(plscase1Fig3MC(:,1),plscase1Fig3MC(:,2),'sb', 'MarkerSize',7);
hold on
semilogy(plscase3Fig3MC(:,1),plscase3Fig3MC(:,2),'or', 'MarkerSize',6);
semilogy(plscase5Fig3MC(:,1),plscase5Fig3MC(:,2),'xg', 'MarkerSize',7);
semilogy(plscase7Fig3MC(:,1),plscase7Fig3MC(:,2),'+m','MarkerSize',7);
semilogy(plscase1Fig3(:,1),plscase1Fig3(:,2),'k', 'MarkerSize',7);
semilogy(plscase2Fig3(:,1),plscase2Fig3(:,2),'-.k','MarkerSize',7);

semilogy(plscase2Fig3MC(:,1),plscase2Fig3MC(:,2),'sb', 'MarkerSize',7);
semilogy(plscase4Fig3MC(:,1),plscase4Fig3MC(:,2),'or', 'MarkerSize',6);
semilogy(plscase6Fig3MC(:,1),plscase6Fig3MC(:,2),'xg','MarkerSize',7);
semilogy(plscase8Fig3MC(:,1),plscase8Fig3MC(:,2),'+m','MarkerSize',7);


%Proposed approach
semilogy(plscase3Fig3(:,1),plscase3Fig3(:,2),'k', 'MarkerSize',7);
semilogy(plscase4Fig3(:,1),plscase4Fig3(:,2),'-.k','MarkerSize',7);
semilogy(plscase5Fig3(:,1),plscase5Fig3(:,2),'k', 'MarkerSize',7);
semilogy(plscase6Fig3(:,1),plscase6Fig3(:,2),'-.k', 'MarkerSize',7);
semilogy(plscase7Fig3(:,1),plscase7Fig3(:,2),'k', 'MarkerSize',7);
semilogy(plscase8Fig3(:,1),plscase8Fig3(:,2),'-.k', 'MarkerSize',7);

% Set axis and legends
axis([5,40,1e-8,1])
xticks(0:5:40)
 set(gca,'FontSize',15,'fontname','times','LineWidth',1)
 ylabel('Secrecy Outage Probability','FontSize',14,'fontname','times');
 xlabel({'$\overline{\gamma}_\mathrm{B}$ (dB)'},'Interpreter','latex','FontSize',16,'fontname','times')
 a=legend({'$N_\mathrm{E} = 1$','$N_\mathrm{E} = 2$','$N_\mathrm{E} = 3$', ...
     '$N_\mathrm{E} = 4$','$m_\mathrm{B} = m_\mathrm{E} = 1$','$m_\mathrm{B} = m_\mathrm{E} = 10$'}, ...
     'Interpreter','latex','FontSize',10,'fontname','times','Location','northeast');
 grid on;

