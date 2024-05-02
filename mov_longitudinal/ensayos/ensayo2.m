function ensayo2 ()
    load('C:\Users\Usuario_UMA\Documents\MATLAB\mov_longitudinal\data\ensayo2\result_120to80_neutral.mat');
    ws=[];
    ws=ans;

    t=ws(1,:);
    acel=ws(2,:);
    acel=acel(100:end);
    vel=ws(3,:);
    vel2=vel(100:end);
    frglobal=ws(4,:);
    frglobal=frglobal(100:end);
    frcrueda=ws(5,:);
    frcrueda=frcrueda(100:end);
    t2=t(100:end);

    frmean2=mean(frglobal);

    f2=figure('Menubar','none','NumberTitle','off','Name','Ensayo 2 ',... 
       'Color',[1, 1, 1],'Resize','on');
    hold on;

        subplot(4,1,1)
        plot (t,vel)
        xlabel('[s]');
        ylabel('[km/h]');
        title 'Información obtenida del Carsim de 120 a 80km/h';
        subtitle 'velocidad';
    
        
        subplot(4,1,2);
        plot(t2,acel);
        xlabel('[s]');
        ylabel('[m/s^2]');
        subtitle 'aceleración';
        
        subplot (4, 1, 3);
        plot(t2,frglobal);
        xlabel('[s]');
        ylabel('fr');
        subtitle 'frglobal';
    
        
        subplot (4, 1, 4);
        plot(t2,frcrueda)
        xlabel('[s]');
        ylabel('fr-r');   
        subtitle 'fr cada rueda';
    hold off;
    

    f2_c=figure('Menubar','none','NumberTitle','off','Name','Ensayo 2 cx',... 
       'Color',[1, 1, 1],'Resize','on', 'Position', [100, 100, 800, 600]);
    m=1838.6
    A=2.8
    den=1.206
    
    numerador = [(m*acel)+(frmean2*m*9.8)];
    denominador = [0.5 * den * A * vel2.^2];
    cx =[numerador./denominador];
    cxmean=mean(cx)


    plot(t2,cx);
    title 'CX ensayo 2'

end