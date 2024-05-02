function ensayo3()
    load('C:\Users\Usuario_UMA\Documents\MATLAB\mov_longitudinal\data\ensayo3\result_pot.mat');
    ws=[];
    ws=ans;

    t=ws(1,:);
    acel=ws(2,:);
    vel=ws(3,:);
    frglobal=ws(4,:);
    frcrueda=ws(5,:);



    frmean2=mean(frglobal);

    f3=figure('Menubar','none','NumberTitle','off','Name','Ensayo 3 marcha 1',... 
       'Color',[1, 1, 1],'Resize','on');
    hold on;

        subplot(4,1,1)
        plot (t,vel)
        xlim ([0 10]);
        xlabel('[s]');
        ylabel('[km/h]');
        title 'Información obtenida del Carsim de 20 a 40km/h con marcha en 1';
        subtitle 'velocidad';
    
        
        subplot(4,1,2);
        plot(t,acel);
        xlim ([0 10]);
        xlabel('[s]');
        ylabel('[m/s^2]');
        subtitle 'aceleración';
        
        subplot (4, 1, 3);
        plot(t,frglobal);
        xlim ([0 10]);
        xlabel('[s]');
        ylabel('fr');
        subtitle 'frglobal';
    
        
        subplot (4, 1, 4);
        plot(t,frcrueda);
        xlim ([0 10]);
        xlabel('[s]');
        ylabel('fr-r');   
        subtitle 'fr cada rueda';
    hold off;

    f3_c=figure('Menubar','none','NumberTitle','off','Name','Ensayo 3 cx marcha 1',... 
       'Color',[1, 1, 1],'Resize','on', 'Position', [0, 100, 500, 500]);
    m=1838.6
    A=2.8
    den=1.206
    
    numerador = [(m*acel)+(frmean2*m*9.8)];
    denominador = [0.5 * den * A * vel.^2];
    cx =[numerador./denominador];
    cxmean=mean(cx)


    plot(t,cx);
    title 'CX ensayo 3'
    legend('cxmean=0.2201')
    xlim ([0 10]);


    f3_pot=figure('Menubar','none','NumberTitle','off','Name','Ensayo 3 potencia marcha 1',... 
       'Color',[1, 1, 1],'Resize','on', 'Position', [1000, 300, 500, 300]);

    ter1=[m*acel-frglobal*m*9.8];
    ter2=[denominador.*cx];
    pot=[(ter1-ter2).*vel];
    potmax=max(pot)

    plot(vel,pot);
    legend('max_pot= -0.003127')
    title 'potencia ensayo 3'
    

end