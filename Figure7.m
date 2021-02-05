%% Figure 7
clc;
clear;
close all;
%% Proposed Approach
% All the data here was imported from the file named "SPSC_SOP_MatWolfram.nb", in the section
% "Figure 7 (strictly positive secrecy capacity - SPSC)"
aux=load('.\Data\spscCase1Fig7.mat');
SpscCase1Fig7=aux.Expression1;
aux=load('.\Data\spscCase2Fig7.mat');
SpscCase2Fig7=aux.Expression1;
aux=load('.\Data\spscCase3Fig7.mat');
SpscCase3Fig7=aux.Expression1;
aux=load('.\Data\spscCase4Fig7.mat');
SpscCase4Fig7=aux.Expression1;
aux=load('.\Data\spscCase5Fig7.mat');
SpscCase5Fig7=aux.Expression1;
aux=load('.\Data\spscCase6Fig7.mat');
SpscCase6Fig7=aux.Expression1;

%% Monte Carlo Simulations
% All the data here was imported from the file named "SPSC_SOP_MCSimulations.m".
%specifically, by uncommenting the all section "FIGURE 7"
aux=load('.\Data\MCspsccase1Fig7.mat');
spcsMCcase1Fig7(:,1)=aux.dBgamma0b; spcsMCcase1Fig7(:,2)=aux.spscMCcase1Fig7;
aux=load('.\Data\MCspsccase2Fig7.mat');
spcsMCcase2Fig7(:,1)=aux.dBgamma0b; spcsMCcase2Fig7(:,2)=aux.spscMCcase2Fig7;
aux=load('.\Data\MCspsccase3Fig7.mat');
spcsMCcase3Fig7(:,1)=aux.dBgamma0b; spcsMCcase3Fig7(:,2)=aux.spscMCcase3Fig7;
aux=load('.\Data\MCspsccase4Fig7.mat');
spcsMCcase4Fig7(:,1)=aux.dBgamma0b; spcsMCcase4Fig7(:,2)=aux.spscMCcase4Fig7;
aux=load('.\Data\MCspsccase5Fig7.mat');
spcsMCcase5Fig7(:,1)=aux.dBgamma0b; spcsMCcase5Fig7(:,2)=aux.spscMCcase5Fig7;
aux=load('.\Data\MCspsccase6Fig7.mat');
spcsMCcase6Fig7(:,1)=aux.dBgamma0b; spcsMCcase6Fig7(:,2)=aux.spscMCcase6Fig7;

%% Plots
figure(4);
%Monte Carlo simulations
plot(spcsMCcase1Fig7(:,1),spcsMCcase1Fig7(:,2),'sb', 'MarkerSize',7);
hold on;
plot(spcsMCcase2Fig7(:,1),spcsMCcase2Fig7(:,2),'or', 'MarkerSize',6);
plot(spcsMCcase3Fig7(:,1),spcsMCcase3Fig7(:,2),'xg', 'MarkerSize',7);
plot(SpscCase1Fig7(:,1),SpscCase1Fig7(:,2),'k', 'MarkerSize',7);
plot(spcsMCcase4Fig7(:,1),spcsMCcase4Fig7(:,2),'sb', 'MarkerSize',7);
plot(spcsMCcase5Fig7(:,1),spcsMCcase5Fig7(:,2),'or', 'MarkerSize',6);
plot(spcsMCcase6Fig7(:,1),spcsMCcase6Fig7(:,2),'xg', 'MarkerSize',7);


%Proposed Approach
plot(SpscCase2Fig7(:,1),SpscCase2Fig7(:,2),'k', 'MarkerSize',7);
plot(SpscCase3Fig7(:,1),SpscCase3Fig7(:,2),'k', 'MarkerSize',7);
plot(SpscCase4Fig7(:,1),SpscCase4Fig7(:,2),'k', 'MarkerSize',7);
plot(SpscCase5Fig7(:,1),SpscCase5Fig7(:,2),'k', 'MarkerSize',7);
plot(SpscCase6Fig7(:,1),SpscCase6Fig7(:,2),'k', 'MarkerSize',7);



axis([-5,15,10^(-59),1.00001])
xticks(-5:5:40)
yticks(1e-9:0.25:1.25)
 set(gca,'FontSize',15,'fontname','times','LineWidth',1)
 ylabel('Probability of SPSC','FontSize',14,'fontname','times');
 xlabel({'$\overline{\gamma}_\mathrm{B}$ (dB)'},'Interpreter','latex','FontSize',16,'fontname','times')
 a=legend({'$N_\mathrm{B} = 1$','$N_\mathrm{B} = 2$','$N_\mathrm{B} = 3$', ...
     '$\mathrm{Analytical}$'}, ...
     'Interpreter','latex','FontSize',10,'fontname','times','Location','southeast');
 
 grid on;

