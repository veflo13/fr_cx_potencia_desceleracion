function ensayo1()
 
    load('C:\Users\Usuario_UMA\Documents\MATLAB\mov_longitudinal\data\ensayo1\r_40to20.mat');
    ws=[];
    ws=ans;

    t=ws(1,:); %se extrae el tiempo 
    vel=ws(3,:); %se extrae el tiempo 
    vel2 =vel / 3.6 ; %se pasa la vel a m/s;
    acel = diff(vel2)./diff(t); %la derivada de la aceleracion dv/dt 
    frglobal= acel ./ (-9.8*4); %se multiplica por la gravedad y por las 4 ruedas 
    frcrueda=frglobal ./ 4;

    frmean=mean(frglobal);
    frecR_mean = mean (frcrueda);


    f1=figure('Menubar','none','NumberTitle','off','Name','Ensayo 1 ',... 
       'Color',[1, 1, 1],'Resize','on');
   hold on; 
       %GRÁFICAS 
        subplot(2,2,1)
        plot (t,vel)
    
        ylim([20 40]);
        xlim ([0 80]);
        xlabel('Tiempo [s]');
        ylabel('Velocidad [m/s]');
        title 'Información obtenida del Carsim de 40 a 20km/h';
        subtitle 'Velocidad';


    
 
        subplot(2,2,2);
        plot(t(2:end),acel);
        subtitle 'Aceleración';
        xlabel('Aceleracion [m/s2]');
        ylabel('frRueda');
    
        
    
        subplot (2, 2, 3);
        plot(vel(2:end) , frglobal);
        legend('mean fr=-0.0017','Location','south')
        subtitle 'fr global';
        xlabel('velocidad');
        ylabel('frGlobal');


    
    
    
        subplot (2, 2, 4);
        plot(vel(2:end),frcrueda)
        subtitle 'fr rueda';
        xlabel('velocidad');
        ylabel('fr cada rueda');

    hold off;
    
end

