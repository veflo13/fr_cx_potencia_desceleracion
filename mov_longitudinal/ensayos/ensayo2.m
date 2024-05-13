function ensayo2 ()
    load('C:\Users\Usuario_UMA\Documents\MATLAB\mov_longitudinal\data\ensayo2\result_120to80_neutral.mat');
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
        title 'Información obtenida del Carsim de 40 a 20km/h';
        subtitle 'Velocidad';


    
 
        subplot(2,1,2);
        plot(t(2:end),acel);
        subtitle 'Aceleración';
        xlabel('Aceleracion [m/s2]');
        ylabel('tiempo [s]');
    
    hold off;
    

    f2_c=figure('Menubar','none','NumberTitle','off','Name','Ensayo 2 cx',... 
       'Color',[1, 1, 1],'Resize','on', 'Position', [100, 100, 800, 600]);
    m=1838.6
    A=2.8
    den=1.206
    
    numerador = [(m*acel)+(frglobal*m*9.8)];
    denominador = [0.5 * den * A * vel.^2];
    denominador = denominador (2:end);
    cx =[numerador./denominador];
    cxmean=mean(cx)


    plot(t(20001:end),cx(20000:end));
    legend ('cx_m_e_a_n= -0278')
    title 'CX ensayo 2'
end
