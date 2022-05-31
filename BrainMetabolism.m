function BrainMetabolism() 

tspan = [0 100];
x1  = 0.024;%Pyr
x2  = 0.013;%AC
x3  = 0;%Bl 
x4  = 0;%Actl
x5 = 0;%AcACl
x6 = 0.004;%Act
x7 = 0.0031;%HC
x8 = 0.5;%AcAC



initial = [x1; x2; x3; x4; x5; x6; x7; x8];

[T,x] = ode15s(@TCAKetone, tspan, initial);

figure (1)
plot(T,real(x(:,1)),'b', 'Linewidth',5);
xlabel('Time (days)','Fontsize',20,'Fontweight','Bold');
ylabel('X1 Pyruvate (mmol/L)','Fontsize',20,'Fontweight','Bold');
set(gca,'Fontsize',20,'FontWeight','bold');

hold on

figure (2)
plot(T,real(x(:,2)),'b', 'Linewidth',5);
xlabel('Time (days)','Fontsize',20,'Fontweight','Bold');
ylabel('X2 Acetyl-CoA (mmol/L)','Fontsize',20,'Fontweight','Bold');
set(gca,'Fontsize',20,'FontWeight','bold');

hold on 

figure (3)
plot(T,real(x(:,3)),'b', 'Linewidth',5);
xlabel('Time (days)','Fontsize',20,'Fontweight','Bold');
ylabel('X3 B-OHB (mmol/L)','Fontsize',20,'Fontweight','Bold');
set(gca,'Fontsize',20,'FontWeight','bold');

hold on 

figure (4)
plot(T,real(x(:,4)),'b', 'Linewidth',5);
xlabel('Time (days)','Fontsize',20,'Fontweight','Bold');
ylabel('X4 Acetoacetate (mmol/L)','Fontsize',20,'Fontweight','Bold');
set(gca,'Fontsize',20,'FontWeight','bold');

hold on

figure (5)
plot(T,real(x(:,5)),'b', 'Linewidth',5);
xlabel('Time (days)','Fontsize',20,'Fontweight','Bold');
ylabel('X5 Acetoacetyl-CoA (mmol/L)','Fontsize',20,'Fontweight','Bold');
set(gca,'Fontsize',20,'FontWeight','bold');

hold on

figure (6)
plot(T,real(x(:,6)),'b', 'Linewidth',5);
xlabel('Time (days)','Fontsize',20,'Fontweight','Bold');
ylabel('X6 Acetoacetate ast (mmol/L)','Fontsize',20,'Fontweight','Bold');
set(gca,'Fontsize',20,'FontWeight','bold');

hold on

figure (7)
plot(T,real(x(:,7)),'b', 'Linewidth',5);
xlabel('Time (days)','Fontsize',20,'Fontweight','Bold');
ylabel('X7 HMG-CoA (mmol/L)','Fontsize',20,'Fontweight','Bold');
set(gca,'Fontsize',20,'FontWeight','bold');

hold on

figure (8)
plot(T,real(x(:,8)),'b', 'Linewidth',5);
xlabel('Time (days)','Fontsize',20,'Fontweight','Bold');
ylabel('X8 Acetoacetyl-CoA ast (mmol/L)','Fontsize',20,'Fontweight','Bold');
set(gca,'Fontsize',20,'FontWeight','bold');

hold on


function dx = TCAKetone(~,x)

%parameters for Figure 5  
a1 = 0.3;
a2 = 1.5;
a3 = 0.9; 
a4 = 0.3;
a5 = 0.5;
a6 = 3.4;
a7 = 1;
a8 = 0.84;
a9 = 1.1;
a10 = 0.2;
a11 = 1.5;
a12 = 0.25;
a13 = 1.75;
a14 = 0.25;
a15 = 0.6;
c1 = 0.08;
f112 = 1.5;
f113 = 0.5;
f11 = 1;
f22 = 0.9;
f25 = 1.5;
f28 = 1;
f217 = 0.005;
f33 = 0.5;
f311 = 0.12;
f315 = 0.04;
f321 = 0.1;
f322 = 0.001;
f44 = 0.5;
f49 = 0.7;
f416 = 0.025;
f517 = 0.005;
f86 = 1.75;
f66 = 1.85;
f67 = 1.25;
f68 = 1.2;
f611 = 1;
f616 = 1.5;
f618 = 1.5;
f621 = 1.5;
f78 = 0.1;
f711 = 0.3;
f720 = 0.5;
f85 = 1;
f814 = 0.5;
f816 = 1;
f819 = 0.5;
x9  = 0.07;%SC
x10  = 0.00295;%Su
x11 = 0;%MCT
x12  = 7.5;%glucose
x13 = 0.001;%glycolysis
x14 = 1E-09;%ACa
x15 = 0.000000386181;%bhd
x16 = 0.000000386181;%sc
x17 = 0.000000386181;%thl
x18 = 0.000000386181;%hl
x19 = 0.000000386181;%bth
x20 = 0.000000386181;%acd
x21 = 0.000000386181;%eMCT
x22 = 0.00017;%NAD+


% %parameters for Figure 6  
% a1 = 0.3;
% a2 = 1.5;
% a3 = 0.9; 
% a4 = 0.3;
% a5 = 0.5;
% a6 = 3.4;
% a7 = 1;
% a8 = 0.84;
% a9 = 1.1;
% a10 = 0.2;
% a11 = 1.5;
% a12 = 0.25;
% a13 = 1.75;
% a14 = 0.25;
% a15 = 0.6;
% c1 = 0.08;
% f112 = 1.5;
% f113 = 0.5;
% f11 = 1;
% f22 = 0.9;
% f25 = 1.5;
% f28 = 1;
% f217 = 0.005;
% f33 = 0.5;
% f311 = 0.12;
% f315 = 0.04;
% f321 = 0.1;
% f322 = 0.001;
% f44 = 0.5;
% f49 = 0.7;
% f416 = 0.025;
% f517 = 0.005;
% f86 = 1.75;
% f66 = 1.85;
% f67 = 1.25;
% f68 = 1.2;
% f611 = 1;
% f616 = 1.5;
% f618 = 1.5;
% f621 = 1.5;
% f78 = 0.1;
% f711 = 0.3;
% f720 = 0.5;
% f85 = 1;
% f814 = 0.5;
% f816 = 1;
% f819 = 0.5;
% x9  = 0.07;%SC
% x10  = 0.00295;%Su
% x11 = 0;%MCT
% x12  = 7.5;%glucose blue = 7.5, green = 6, red = 4.5
% x13 = 0.001;%glycolysis
% x14 = 1E-09;%ACa
% x15 = 0.000000386181;%bhd
% x16 = 0.000000386181;%sc
% x17 = 0.000000386181;%thl
% x18 = 0.000000386181;%hl
% x19 = 0.000000386181;%bth
% x20 = 0.000000386181;%acd
% x21 = 0.000000386181;%eMCT
% x22 = 0.00017;%NAD+


% %parameters for Figure 7 
% a1 = 0.3;
% a2 = 1.5;
% a3 = 0.9; 
% a4 = 0.3;
% a5 = 0.5;
% a6 = 3.4;
% a7 = 1;
% a8 = 0.84;
% a9 = 1.1;
% a10 = 0.2;
% a11 = 1.5;
% a12 = 0.25;
% a13 = 1.75;
% a14 = 0.25;
% a15 = 0.6;
% c1 = 0.08; %blue = 0.08, magenta = 0.7
% f112 = 1.5;
% f113 = 0.5;
% f11 = 1;
% f22 = 0.9;
% f25 = 1.5;
% f28 = 1;
% f217 = 0.005;
% f33 = 0.5;
% f311 = 0.12; %blue = 0.12, magenta = 0.5
% f315 = 0.04;
% f321 = 0.1;
% f322 = 0.001;
% f44 = 0.5; %blue = 0.5, magenta = 0.8
% f49 = 0.7;
% f416 = 0.025;
% f517 = 0.005;
% f86 = 1.75;
% f66 = 1.85;
% f67 = 1.25;
% f68 = 1.2;
% f611 = 1;
% f616 = 1.5;
% f618 = 1.5;
% f621 = 1.5;
% f78 = 0.1;
% f711 = 0.3;
% f720 = 0.5;
% f85 = 1;
% f814 = 0.5;
% f816 = 1;
% f819 = 0.5;
% x9  = 0.07;%SC
% x10  = 0.00295;%Su
% x11 = 0;%MCT
% x12  = 7.5;%glucose blue = 7.5, magenta = 4.5
% x13 = 0.001;%glycolysis
% x14 = 1E-09;%ACa
% x15 = 0.000000386181;%bhd
% x16 = 0.000000386181;%sc
% x17 = 0.000000386181;%thl
% x18 = 0.000000386181;%hl
% x19 = 0.000000386181;%bth
% x20 = 0.000000386181;%acd
% x21 = 0.000000386181;%eMCT
% x22 = 0.00017;%NAD+


% %parameters for Figure 8 
% a1 = 0.3;
% a2 = 1.5;
% a3 = 0.9; 
% a4 = 0.3;
% a5 = 0.5;
% a6 = 3.4;
% a7 = 1;
% a8 = 0.84;
% a9 = 1.1;
% a10 = 0.2;
% a11 = 1.5;
% a12 = 0.25;
% a13 = 1.75;
% a14 = 0.25;
% a15 = 0.6;
% c1 = 0.08; 
% f112 = 1.5;
% f113 = 0.5;
% f11 = 1;
% f22 = 0.9;
% f25 = 1.5;
% f28 = 1;
% f217 = 0.005;
% f33 = 0.5;
% f311 = 0.12; 
% f315 = 0.04;
% f321 = 0.1;
% f322 = 0.001;
% f44 = 0.5; 
% f49 = 0.7;
% f416 = 0.025;
% f517 = 0.005;
% f86 = 1.75;
% f66 = 1.85;
% f67 = 1.25;
% f68 = 1.2;
% f611 = 1;
% f616 = 1.5;
% f618 = 1.5;
% f621 = 1.5;
% f78 = 0.1;
% f711 = 0.3;
% f720 = 0.5;
% f85 = 1;
% f814 = 0.5;
% f816 = 1;
% f819 = 0.5;
% x9  = 0.07;%SC
% x10  = 0.00295;%Su
% x11 = 0;%MCT blue = 0, red = 0, green = 1.6
% x12  = 7.5;%glucose blue = 7.5, red = 4.5, green = 4.5
% x13 = 0.001;%glycolysis
% x14 = 1E-09;%ACa
% x15 = 0.000000386181;%bhd
% x16 = 0.000000386181;%sc
% x17 = 0.000000386181;%thl
% x18 = 0.000000386181;%hl
% x19 = 0.000000386181;%bth
% x20 = 0.000000386181;%acd
% x21 = 0.000000386181;%eMCT
% x22 = 0.00017;%NAD+


% %parameters for Figure 9  
% a1 = 0.3;
% a2 = 1.5;
% a3 = 0.9; 
% a4 = 0.3;
% a5 = 0.5;
% a6 = 3.4;
% a7 = 1;
% a8 = 0.84;
% a9 = 1.1;
% a10 = 0.2;
% a11 = 1.5;
% a12 = 0.25;
% a13 = 1.75;
% a14 = 0.25;
% a15 = 0.6;
% c1 = 0.08;
% f112 = 1.5;
% f113 = 0.5;
% f11 = 1;
% f22 = 0.9;
% f25 = 1.5;
% f28 = 1;
% f217 = 0.005;
% f33 = 0.5;
% f311 = 0.12;
% f315 = 0.04;
% f321 = 0.1;
% f322 = 0.001;
% f44 = 0.5;
% f49 = 0.7;
% f416 = 0.025;
% f517 = 0.005;
% f86 = 1.75;
% f66 = 1.85;
% f67 = 1.25;
% f68 = 1.2;
% f611 = 1;
% f616 = 1.5;
% f618 = 1.5;
% f621 = 1.5;
% f78 = 0.1;
% f711 = 0.3;
% f720 = 0.5;
% f85 = 1;
% f814 = 0.5;
% f816 = 1;
% f819 = 0.5;
% x9  = 0.07;%SC
% x10  = 0.00295;%Su
% x11 = 0;%MCT blue = 0, green = 0.5
% x12  = 7.5;%glucose
% x13 = 0.001;%glycolysis
% x14 = 1E-09;%ACa
% x15 = 0.000000386181;%bhd
% x16 = 0.000000386181;%sc
% x17 = 0.000000386181;%thl
% x18 = 0.000000386181;%hl
% x19 = 0.000000386181;%bth
% x20 = 0.000000386181;%acd
% x21 = 0.000000386181;%eMCT
% x22 = 0.00017;%NAD+


%ODEs
dx = zeros(8,1);
dx(1) = (a1 * x12^f112 * x13^f113) - (a2 * x(1)^f11);
dx(2) = (a2 * x(1)^f11) + (a7 * x(5)^f25 * x17^f217) + (a8 * x(8)^f28) - (a3 * x(2)^f22);
dx(3) = c1 + (a4 * x11^f311 * x21^f321) - (a5 * x(3)^f33 * x15^f315 * x22^f322);
dx(4) = (a5 * x(3)^f33 * x15^f315 * x22^f322) - (a6 * x(4)^f44 * x9^f49 * x16^f416);
dx(5) = (a6 * x(4)^f44 * x9^f49 * x16^f416) - (a7 * x(5)^f25 * x17^f517);
dx(6) = (a12 * x(8)^f68 * x21^f621) + (a11 * x(7)^f67 * x18^f618) + (a14 * x9^f85 * x(8)^f816 * x16^f816) - (a13 * x10^f86 * x(6)^f66 * x16^f616);
dx(7) = (a10 * x(8)^f78 * x20^f720) - (a11 * x(7)^f67 * x18^f618) - (a15 * x(7)^f711 * x19^f819);
dx(8) = (a15 * x(7)^f711 * x19^f819) + (a9 * x14^f814 * x19^f819) + (a13 * x10^f86 * x(6)^f66 * x16^f616) - (a10 * x(8)^f78 * x20^f720) - (a8 * x(8)^f28 * x17^f217) - (a14 * x(8)^f68 * x11^f611) - (a12 * x(8)^f68 * x21^f621);
end
end