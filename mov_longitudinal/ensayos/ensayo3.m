function ensayo3()
    load('C:\Users\Usuario_UMA\Documents\MATLAB\mov_longitudinal\data\ensayo3\result_pot.mat');
    ws=[];
    ws=ans;


    load('C:\Users\Usuario_UMA\Documents\MATLAB\mov_longitudinal\data\ensayo3\result_pot.mat');
    ws=[];
    ws=ans;


    t=ws(1,:); %se extrae el tiempo 
    vel=ws(3,:); %se extrae el tiempo 
    vel2 =vel / 3.6 ; %se pasa la vel a km/h;
    acel = diff(vel2)./diff(t); %la derivada de la aceleracion dv/dt
    frglobal= 0.0017; %tomo el valor obtenido del fr
    frcrueda= 4.235932933862128e-04; %tomo el valor obtenido del fr cada rueda


    f2=figure('Menubar','none','NumberTitle','off','Name','Ensayo 2 ',... 
       'Color',[1, 1, 1],'Resize','on');
    hold on;

     %GRÁFICAS 
        subplot(2,1,1)
        plot (t,vel)

        xlabel('Tiempo [s]');
        ylabel('Velocidad [m/s]');
        title 'Información obtenida del Carsim de 40 a 120km/h';
        subtitle 'Velocidad';


    
 
        subplot(2,1,2);
        plot(t(2:end), acel);
        subtitle 'Aceleración';
        xlabel('Aceleracion [m/s2]');
        ylabel('tiempo [s]');
    
    hold off;

    %cálculo de potencia 

    m=1838.6
    A=2.8
    den=1.206
    cx =-0.0278;
    

    denominador_pot = [0.5 * den * A * vel.^2];
    denominador_pot= denominador (2:end);



   f3_pot=figure('Menubar','none','NumberTitle','off','Name','Ensayo 3 potencia marcha 1',... 
       'Color',[1, 1, 1],'Resize','on', 'Position', [1000, 300, 500, 300]);

    ter1=[m*acel-frglobal*m*-9.8];
    ter2=[denominador.*cx];
    pot=[(ter1-ter2).*vel(2:end)];
    potmax=max(pot)

    plot(vel(2:end),pot);
    legend('max_p_o_t= 0.000066686', 'Location','south')
    title 'potencia ensayo 3'

end
