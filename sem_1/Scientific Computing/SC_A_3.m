%%  Application of Eigenvalues & Eigenvectors in face recognition using the data set
% Loading Images for Different Individuals

% Loading and processing images of Clooney
filename1 = 'D:\1-1 sem\Optimisation\clooney1.jpg';
filename2= 'D:\1-1 sem\Optimisation\clooney2.jpg';
filename3= 'D:\1-1 sem\Optimisation\clooney3.jpg';
filename4= 'D:\1-1 sem\Optimisation\clooney4.jpg';
filename5= 'D:\1-1 sem\Optimisation\clooney5.jpg';

% Processing images using imread, rgb2gray, and imresize
C1 = imresize(double(rgb2gray(imread(filename1))), [120 80]);
C2 = imresize(double(rgb2gray(imread(filename2))), [120 80]);
C3 = imresize(double(rgb2gray(imread(filename3))), [120 80]);
C4 = imresize(double(rgb2gray(imread(filename4))), [120 80]);
C5 = imresize(double(rgb2gray(imread(filename5))), [120 80]);

% Displaying Images of Different Individuals
subplot(4,5,1), pcolor(flipud(C1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(4,5,2), pcolor(flipud(C2)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(4,5,3), pcolor(flipud(C3)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(4,5,4), pcolor(flipud(C4)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(4,5,5), pcolor(flipud(C5)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])

% Similar filenames for other images of  Obama, Thatcher, Federer
% Similar processing for other images of Obama, Thatcher, Federer

filename6 = 'D:\1-1 sem\Optimisation\obama1.jpg'
filename7 = 'D:\1-1 sem\Optimisation\obama2.jpg'
filename8 = 'D:\1-1 sem\Optimisation\obama3.jpg'
filename9 = 'D:\1-1 sem\Optimisation\obama4.jpg'
filename10 = 'D:\1-1 sem\Optimisation\obama5.jpg'

O1= imresize( double( rgb2gray( imread(filename6) ) ) , [120 80] );
O2= imresize( double( rgb2gray( imread(filename7) ) ) , [120 80] );
O3= imresize( double( rgb2gray( imread(filename8) ) ) , [120 80] );
O4= imresize( double( rgb2gray( imread(filename9) ) ) , [120 80] );
O5= imresize( double( rgb2gray( imread(filename10) ) ) , [120 80] );

subplot(4,5,6), pcolor(flipud(O1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(4,5,7), pcolor(flipud(O2)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(4,5,8), pcolor(flipud(O3)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(4,5,9), pcolor(flipud(O4)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(4,5,10), pcolor(flipud(O5)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])

filename11 = 'D:\1-1 sem\Optimisation\thatcher1.jpg'
filename12 = 'D:\1-1 sem\Optimisation\thatcher2.jpg'
filename13 = 'D:\1-1 sem\Optimisation\thatcher3.jpg'
filename14 = 'D:\1-1 sem\Optimisation\thatcher4.jpg'
filename15 = 'D:\1-1 sem\Optimisation\thatcher5.jpg'

M1= imresize( double( rgb2gray( imread(filename11) ) ) , [120 80] );
M2= imresize( double( rgb2gray( imread(filename12) ) ) , [120 80] );
M3= imresize( double( rgb2gray( imread(filename13) ) ) , [120 80] );
M4= imresize( double( rgb2gray( imread(filename14) ) ) , [120 80] );
M5= imresize( double( rgb2gray( imread(filename15) ) ) , [120 80] );

subplot(4,5,11), pcolor(flipud(M1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(4,5,12), pcolor(flipud(M2)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(4,5,13), pcolor(flipud(M3)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(4,5,14), pcolor(flipud(M4)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(4,5,15), pcolor(flipud(M5)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])

filename16 = 'D:\1-1 sem\Optimisation\fed1.jpg'
filename17 = 'D:\1-1 sem\Optimisation\fed2.jpg'
filename18 = 'D:\1-1 sem\Optimisation\fed3.jpg'
filename19 = 'D:\1-1 sem\Optimisation\fed4.jpg'
filename20 = 'D:\1-1 sem\Optimisation\fed5.jpg'

F1= imresize( double( rgb2gray( imread(filename16) ) ) , [120 80] );
F2= imresize( double( rgb2gray( imread(filename17) ) ) , [120 80] );
F3= imresize( double( rgb2gray( imread(filename18) ) ) , [120 80] );
F4= imresize( double( rgb2gray( imread(filename19) ) ) , [120 80] );
F5= imresize( double( rgb2gray( imread(filename20) ) ) , [120 80] );

subplot(4,5,16), pcolor(flipud(F1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(4,5,17), pcolor(flipud(F2)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(4,5,18), pcolor(flipud(F3)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(4,5,19), pcolor(flipud(F4)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(4,5,20), pcolor(flipud(F5)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])

%  Average faces
AveC=(C1+C2+C3+C4+C5)/5;
AveO=(O1+O2+O3+O4+O5)/5;
AveM=(M1+M2+M3+M4+M5)/5;
AveF=(F1+F2+F3+F4+F5)/5;

figure(2), 
subplot(2,2,1),pcolor(flipud(AveC)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(2,2,2),pcolor(flipud(AveO)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(2,2,3),pcolor(flipud(AveM)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(2,2,4),pcolor(flipud(AveF)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])

% data matrix
D=[reshape(C1,1,120*80)
    reshape(C2,1,120*80)
    reshape(C3,1,120*80)
    reshape(C4,1,120*80)
    reshape(C5,1,120*80)
    reshape(O1,1,120*80)
    reshape(O2,1,120*80)
    reshape(O3,1,120*80)
    reshape(O4,1,120*80)
    reshape(O5,1,120*80)
    reshape(M1,1,120*80)
    reshape(M2,1,120*80)
    reshape(M3,1,120*80)
    reshape(M4,1,120*80)
    reshape(M5,1,120*80)
    reshape(F1,1,120*80)
    reshape(F2,1,120*80)
    reshape(F3,1,120*80)
    reshape(F4,1,120*80)
    reshape(F5,1,120*80)];

A=(D')*(D);
size(A)

[V,D]=eigs(A,20,'lm');


figure(3)
subplot(2,3,1), face1=reshape(V(:,1),120,80); pcolor(flipud(face1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(2,3,2), face1=reshape(V(:,2),120,80); pcolor(flipud(face1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(2,3,3), face1=reshape(V(:,3),120,80); pcolor(flipud(face1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(2,3,4), face1=reshape(V(:,4),120,80); pcolor(flipud(face1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(2,3,5), face1=reshape(V(:,5),120,80); pcolor(flipud(face1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(2,3,6), semilogy(diag(D),'ko','Linewidth',[2])
set(gca,'Fontsize',[14])

figure(4)
vecC=reshape(AveC,1,120*80);
vecO=reshape(AveO,1,120*80);
vecM=reshape(AveM,1,120*80);
vecF=reshape(AveF,1,120*80);

projC=vecC*V;
projO=vecO*V;
projM=vecM*V;
projF=vecF*V;

subplot(2,2,1), bar(projC(2:20)), set(gca,'Xlim',[0 20],'Ylim',[-2000 2000],'Xtick',[],'Ytick',[])
 text(12,-1700,'Clooney','Fontsize',[15])
subplot(2,2,2), bar(projO(2:20)), set(gca,'Xlim',[0 20],'Ylim',[-2000 2000],'Xtick',[],'Ytick',[])
 text(12,-1700,'Obama','Fontsize',[15])
subplot(2,2,3), bar(projM(2:20)), set(gca,'Xlim',[0 20],'Ylim',[-2000 2000],'Xtick',[],'Ytick',[])
 text(12,-1700,'Thatcher','Fontsize',[15])
subplot(2,2,4), bar(projF(2:20)), set(gca,'Xlim',[0 20],'Ylim',[-2000 2000],'Xtick',[],'Ytick',[])
 text(12,-1700,'Federer','Fontsize',[15])
%plot(1:10,projC,'ko',1:10,projO,'ro',1:10,projM,'go',1:10,projF,'mo')

% Reading the test files
filename21 = 'D:\1-1 sem\Optimisation\test1.jpg'
filename22 = 'D:\1-1 sem\Optimisation\test2.jpg'
filename23 = 'D:\1-1 sem\Optimisation\test3.jpg'
filename24 = 'D:\1-1 sem\Optimisation\test4.jpg'

% testing
T1= imresize( double( rgb2gray( imread(filename21) ) ) , [120 80] );
T2= imresize( double( rgb2gray( imread(filename22) ) ) , [120 80] );
T3= imresize( double( rgb2gray( imread(filename23) ) ) , [120 80] );
T4= imresize( double( rgb2gray( imread(filename24) ) ) , [120 80] );

vec1=reshape(T1,1,120*80);
vec2=reshape(T2,1,120*80);
vec3=reshape(T3,1,120*80);
vec4=reshape(T4,1,120*80);

proj1=vec1*V;  
proj2=vec2*V;
proj3=vec3*V;
proj4=vec4*V;


recon1=V*proj1'; rec1=reshape(recon1,120,80);
recon2=V*proj2'; rec2=reshape(recon2,120,80);
recon3=V*proj3'; rec3=reshape(recon3,120,80);
recon4=V*proj4'; rec4=reshape(recon4,120,80);


figure(5)
subplot(3,4,1), pcolor(flipud(T1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(3,4,5), pcolor(flipud(T2)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(3,4,9), pcolor(flipud(T4)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])

%subplot(3,4,2), bar(projM(2:20)), set(gca,'Xlim',[0 20],'Xtick',[],'Ytick',[])
subplot(3,4,2), bar(proj1(2:20)), set(gca,'Xlim',[0 20],'Ylim',[-2000 2000],'Xtick',[],'Ytick',[])

%subplot(3,4,6), bar(projM(2:20)), set(gca,'Xlim',[0 20],'Xtick',[],'Ytick',[])
subplot(3,4,6), bar(proj2(2:20)), set(gca,'Xlim',[0 20],'Ylim',[-2000 2000],'Xtick',[],'Ytick',[])
subplot(3,4,10), bar(proj4(2:20)), set(gca,'Xlim',[0 20],'Ylim',[-2000 2000],'Xtick',[],'Ytick',[])

%subplot(3,4,10), bar(projC(2:20)), set(gca,'Xlim',[0 20],'Xtick',[],'Ytick',[])

subplot(3,4,3), pcolor(flipud(rec1)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(3,4,7), pcolor(flipud(rec2)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(3,4,11), pcolor(flipud(rec4)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])


% compare

vecC=reshape(AveC,1,120*80);

pC1= reshape(C1,1,120*80)*V;
pC2= reshape(C2,1,120*80)*V;
pC3= reshape(C3,1,120*80)*V;
pC4= reshape(C4,1,120*80)*V;
pC5= reshape(C5,1,120*80)*V;

pO1= reshape(O1,1,120*80)*V;
pO2= reshape(O2,1,120*80)*V;
pO3= reshape(O3,1,120*80)*V;
pO4= reshape(O4,1,120*80)*V;
pO5= reshape(O5,1,120*80)*V;

pT1= reshape(M1,1,120*80)*V;
pT2= reshape(M2,1,120*80)*V;
pT3= reshape(M3,1,120*80)*V;
pT4= reshape(M4,1,120*80)*V;
pT5= reshape(M5,1,120*80)*V;

pF1= reshape(F1,1,120*80)*V;
pF2= reshape(F2,1,120*80)*V;
pF3= reshape(F3,1,120*80)*V;
pF4= reshape(F4,1,120*80)*V;
pF5= reshape(F5,1,120*80)*V;


comps(1)=norm(proj1-pT1)/norm(proj1);
comps(2)=norm(proj1-pT2)/norm(proj1);
comps(3)=norm(proj1-pT3)/norm(proj1);
comps(4)=norm(proj1-pT4)/norm(proj1);
comps(5)=norm(proj1-pT5)/norm(proj1);
subplot(3,4,4), bar(comps), set(gca,'Xlim',[0 6],'Ylim',[0 1],'Xtick',[],'Ytick',[])

comps2(1)=norm(proj2-pT1)/norm(proj2);
comps2(2)=norm(proj2-pT2)/norm(proj2);
comps2(3)=norm(proj2-pT3)/norm(proj2);
comps2(4)=norm(proj2-pT4)/norm(proj2);
comps2(5)=norm(proj2-pT5)/norm(proj2);
subplot(3,4,8), bar(comps2), set(gca,'Xlim',[0 6],'Ylim',[0 1],'Xtick',[],'Ytick',[])

comps3(1)=norm(proj4-pT1)/norm(proj4);
comps3(2)=norm(proj4-pT2)/norm(proj4);
comps3(3)=norm(proj4-pT3)/norm(proj4);
comps3(4)=norm(proj4-pT4)/norm(proj4);
comps3(5)=norm(proj4-pT5)/norm(proj4);
subplot(3,4,12), bar(comps3), set(gca,'Xlim',[0 6],'Ylim',[0 1],'Xtick',[],'Ytick',[])


figure(6)

subplot(3,4,1), pcolor(flipud(T3)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])
subplot(3,4,2), bar(proj3(2:20)), set(gca,'Xlim',[0 20],'Ylim',[-2000 2000],'Xtick',[],'Ytick',[])
subplot(3,4,3), pcolor(flipud(rec3)), shading interp, colormap(gray), set(gca,'Xtick',[],'Ytick',[])


co1(1)=norm(proj3-pC1)/norm(proj3);
co1(2)=norm(proj3-pC2)/norm(proj3);
co1(3)=norm(proj3-pC3)/norm(proj3);
co1(4)=norm(proj3-pC4)/norm(proj3);
co1(5)=norm(proj3-pC5)/norm(proj3);

co2(1)=norm(proj3-pO1)/norm(proj3);
co2(2)=norm(proj3-pO2)/norm(proj3);
co2(3)=norm(proj3-pO3)/norm(proj3);
co2(4)=norm(proj3-pO4)/norm(proj3);
co2(5)=norm(proj3-pO5)/norm(proj3);

co3(1)=norm(proj3-pT1)/norm(proj3);
co3(2)=norm(proj3-pT2)/norm(proj3);
co3(3)=norm(proj3-pT3)/norm(proj3);
co3(4)=norm(proj3-pT4)/norm(proj3);
co3(5)=norm(proj3-pT5)/norm(proj3);

co4(1)=norm(proj3-pF1)/norm(proj3);
co4(2)=norm(proj3-pF2)/norm(proj3);
co4(3)=norm(proj3-pF3)/norm(proj3);
co4(4)=norm(proj3-pF4)/norm(proj3);
co4(5)=norm(proj3-pF5)/norm(proj3);



subplot(3,4,5), bar(co1), set(gca,'Xlim',[0 6],'Ylim',[0 1],'Xtick',[],'Ytick',[])
 text(1,-0.2,'Clooney','Fontsize',[15])
subplot(3,4,6), bar(co2), set(gca,'Xlim',[0 6],'Ylim',[0 1],'Xtick',[],'Ytick',[])
 text(1,-0.2,'Obama','Fontsize',[15])
subplot(3,4,7), bar(co3), set(gca,'Xlim',[0 6],'Ylim',[0 1],'Xtick',[],'Ytick',[])
 text(1,-0.2,'Thatcher','Fontsize',[15])
subplot(3,4,8), bar(co4), set(gca,'Xlim',[0 6],'Ylim',[0 1],'Xtick',[],'Ytick',[])
 text(1,-0.2,'Federer','Fontsize',[15])