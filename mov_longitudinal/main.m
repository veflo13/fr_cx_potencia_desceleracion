figura_inicio = figure('Menubar','none','NumberTitle','off','Name','Movimiento longitudinal del vehículo',... 
       'Color',[0 0.1765 0.3647], 'Position', [1,1,1650,950]);
boton1 = uicontrol(figura_inicio, 'Style', 'text', 'String', '¿Qué ensayo quieres hacer?', 'FontSize', [24],...
    'Position', [600, 700, 425, 40],'BackgroundColor', [0 0.1765 0.3647], 'ForegroundColor', [1, 1, 1]);

% Agregar la carpeta "ensayos" al path de MATLAB
addpath('C:\Users\Usuario_UMA\Documents\MATLAB\mov_longitudinal\ensayos');

% Crear el botón
boton1 = uicontrol(figura_inicio, 'Style', 'pushbutton', 'String', 'Ensayo 1', 'FontSize', [16], 'Position', [450, 475, 125, 75],  'CallBack', 'ensayo1');
boton2 = uicontrol(figura_inicio, 'Style', 'pushbutton', 'String', 'Ensayo 2', 'FontSize', [16], 'Position', [750, 475, 125, 75],  'CallBack', 'ensayo2');
boton3 = uicontrol(figura_inicio, 'Style', 'pushbutton', 'String', 'Ensayo 3', 'FontSize', [16], 'Position', [1050, 475, 125, 75], 'CallBack', 'ensayo3');
boton4 = uicontrol(figura_inicio, 'Style', 'pushbutton', 'String', 'Limpiar',  'FontSize', [16], 'Position', [750, 275, 125, 75],  'CallBack', 'close all');


%function limpiar ()
 %   exi1=exist ('f1','f2_c','f2','f3','f3_pot','f3_c');
  %   if exi1==1;
   %    if ishandle (fig1)==1;
    %    close all ('f1','f2_c','f2','f3','f3_pot','f3_c');
     %  end;
     %end;
%end