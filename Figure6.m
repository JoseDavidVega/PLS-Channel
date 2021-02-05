%% Figure 6
clc;
clear;
close all;
%% Proposed Approach
% All the data here was imported from the file named "SPSC_SOP_MatWolfram.nb", in the section
% "Figure 6 by varying kappa_i->Proposed Approach sub-section"
aux=load('.\Data\plsCase1Fig6.mat');
plscase1Fig6=aux.Expression1;
aux=load('.\Data\plsCase2Fig6.mat');
plscase2Fig6=aux.Expression1;
aux=load('.\Data\plsCase3Fig6.mat');
plscase3Fig6=aux.Expression1;
aux=load('.\Data\plsCase4Fig6.mat');
plscase4Fig6=aux.Expression1;
aux=load('.\Data\plsCase5Fig6.mat');
plscase5Fig6=aux.Expression1;

%% Numerical Exact Solution
% All the data here was imported from the file named "SPSC_SOP_MCSimulations.nb", in the section
% "Figure 6 by varying kappa_i->Exact Numerical Evaluation (By integrating) sub-section"
aux=load('.\Data\plsCase1Fig6NumericalSol.mat');
Numericalcase1Fig6=aux.Expression1;
aux=load('.\Data\plsCase2Fig6NumericalSol.mat');
Numericalcase2Fig6=aux.Expression1;
aux=load('.\Data\plsCase3Fig6NumericalSol.mat');
Numericalcase3Fig6=aux.Expression1;
aux=load('.\Data\plsCase4Fig6NumericalSol.mat');
Numericalcase4Fig6=aux.Expression1;
aux=load('.\Data\plsCase5Fig6NumericalSol.mat');
Numericalcase5Fig6=aux.Expression1;

%% Plots
figure(6);
%Numerical Exact Solution
semilogy(Numericalcase1Fig6(:,1),Numericalcase1Fig6(:,2),'sb', 'MarkerSize',7);
hold on
semilogy(Numericalcase2Fig6(:,1),Numericalcase2Fig6(:,2),'or', 'MarkerSize',6);
semilogy(Numericalcase3Fig6(:,1),Numericalcase3Fig6(:,2),'xg', 'MarkerSize',7);
semilogy(plscase4Fig6(:,1),plscase4Fig6(:,2),'+m','MarkerSize',7);
semilogy(plscase5Fig6(4:end,1),plscase5Fig6(4:end,2),'*c','MarkerSize',7);

%Proposed approach
semilogy(plscase1Fig6(:,1),plscase1Fig6(:,2),'k', 'MarkerSize',7);
semilogy(plscase2Fig6(:,1),plscase2Fig6(:,2),'k', 'MarkerSize',7);
semilogy(plscase3Fig6(:,1),plscase3Fig6(:,2),'k', 'MarkerSize',7);
semilogy(Numericalcase4Fig6(:,1),Numericalcase4Fig6(:,2),'k', 'MarkerSize',7);
semilogy(Numericalcase5Fig6(:,1),Numericalcase5Fig6(:,2),'k', 'MarkerSize',7);


axis([0,25,1e-8,0.010])
xticks(0:5:40)
 set(gca,'FontSize',15,'fontname','times','LineWidth',1)
 ylabel('Secrecy Outage Probability','FontSize',14,'fontname','times');
 xlabel({'$\kappa_i$'},'Interpreter','latex','FontSize',16,'fontname','times')
 a=legend({'$\mu_\mathrm{B} = \mu_\mathrm{E} = 1$','$\mu_\mathrm{B} = \mu_\mathrm{E} = 2$','$\mu_\mathrm{B} = \mu_\mathrm{E} = 3$', ...
     '$\mu_\mathrm{B} = \mu_\mathrm{E} = 4$','$\mu_\mathrm{B} = \mu_\mathrm{E} = 5$','$\mathrm{Analytical}$'}, ...
     'Interpreter','latex','FontSize',10,'fontname','times','Location','southeast');
 grid on;



