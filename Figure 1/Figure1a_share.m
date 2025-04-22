clc;
clear;
close all;
load('mycolorbar3.mat')
load('ISW_satellite.mat')
load('topo.mat')
lon1 = 90; lon2 = 101;
lat1 = 4; lat2 = 18;
figure(4)
m_proj('lambert','lon',[lon1, lon2],'lat',[lat1, lat2]);
hold on
m_contourf(lonss, latss, depss, 'linestyle', 'none'); shading interp;
colormap(gca, mycolorbar3); caxis([-4000,0])

for i=1:length(V)
    h1 = m_plot(V(i).X(1:end-1),V(i).Y(1:end-1),'color','k', 'linewidth', 0.5);
end
hold on
m_plot(95.6,9.6,'.','MarkerSize', 20, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r')
m_gshhs_h('patch',[0.7 0.7 0.7],'edgecolor', 'k');
m_grid('gridcolor','none','backcolor','w','fontsize', 12);









