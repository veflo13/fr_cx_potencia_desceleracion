function ensayo1()
 
    load('C:\Users\Usuario_UMA\Documents\MATLAB\mov_longitudinal\data\ensayo1\r_40to20.mat');
    ws=[];
    ws=ans;

    t=ws(1,:);
    acel=ws(2,:);
    acel=acel(100:end);
    vel=ws(3,:);
    frglobal=ws(4,:);
    frglobal=frglobal(100:end);
    frcrueda=ws(5,:);
    frcrueda=frcrueda(100:end);
    t2=t(100:end);

    frmean=mean(frglobal);

    f1=figure('Menubar','none','NumberTitle','off','Name','Ensayo 1 ',... 
       'Color',[1, 1, 1],'Resize','on');
   hold on; 
       %GRÁFICAS 
        subplot(4,1,1)
        plot(t,vel);
    
        ylim([20 40]);
        xlim ([0 80]);
        xeti1=text(81, 18, '[s]' );
        yeti1=text(-10, 40, '[km/h]');
        title 'Información obtenida del Carsim de 40 a 20km/h';
        subtitle 'velocidad';
    
    
        subplot(4,1,2);
        plot(t2,acel);
        ylim([-0.0840 0]);
        xlim ([0 90]);
        subtitle 'aceleración';
        xeti1=text(92,-0.0840,'[s]');
        yeti1=text(-12, 0, '[m/s^2]');
    
        
    
        subplot (4, 1, 3);
        plot(t2,frglobal)
        legend('mean fr=-0.0017')
        ylim([-0.0021 0]);
        xlim ([0 90]);
        subtitle 'fr global';
        xeti1=text(92,-0.0021,'[s]');
        yeti1=text(-8, 0, 'fr');
    
    
    
        subplot (4, 1, 4);
        plot(t2,frcrueda)
        ylim([-5.3555e-04 0]);
        xlim ([0 90]);
        subtitle 'fr rueda';
        xeti1=text(92,-5.3555e-04,'[s]');
        yeti1=text(-8, 0 , 'fr-r');
    hold off;
    
end

