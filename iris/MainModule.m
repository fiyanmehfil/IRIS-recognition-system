function MainModule

get(0,'DefaultUicontrolBackgroundColor');
set(0,'DefaultUicontrolBackgroundColor','[0.75, 0.75, 0.75]')
choice = questdlg('WOULD YOU LIKE TO TRAIN THE SYSTEM OR FIND A MATCH?', ...
                   'WELCOME TO IRIS RECOGNITION SYSTEM!', ...
                   'Find Match','Train System','Cancel','Find Match');
            

switch choice
 
     case 'Find Match'
        get(0,'DefaultUicontrolBackgroundColor');
        set(0,'DefaultUicontrolBackgroundColor','[0.75, 0.75, 0.75]')
         d = questdlg('PLEASE SELECT THE IRIS IMAGE TO BE MATCHED (JPEG FORMAT)!', ...
                   'WELCOME TO IRIS RECOGNITION SYSTEM!', ...
                   'OK','Cancel','OK');
               
switch d
case 'OK'
        
% uiwait(d);
drawnow; pause(0.05);

[image] = imgetfile;
[template,mask] = createiristemplate(image);

get(0,'DefaultUicontrolBackgroundColor');
set(0,'DefaultUicontrolBackgroundColor','[0.75, 0.75, 0.75]')
d1 = questdlg('PLEASE SELECT THE IRIS IMAGE FROM THE DATABASE (JPEG FORMAT)!', ...
                   'WELCOME TO IRIS RECOGNITION SYSTEM!', ...
                   'OK','Cancel','OK');
 switch d1
     
  case 'OK'
      
% uiwait(d1);
drawnow; pause(0.05);

[image1] = imgetfile;
[template1,mask1] = createiristemplate(image1);

% msgbox (sprintf ( 'A =% 2.3g \ nB =% 2.3g' , A, B), 'AB' )
hd = gethammingdistance (template, mask, template1, mask1);
matching_quotient = 1-hd;
if(hd < 0.1)
h = msgbox(sprintf('MATCH FOUND! \nHD VALUE =% 2.3g AND MATCHING QUOTIENT =% 2.3g' , hd ,matching_quotient) ,'SUCCESS');
set(h, 'position', [400 300 220 100]); %makes box bigger
fprintf('HD value --- %f \n',hd);
fprintf('matching  value --- %f \n',matching_quotient);

else
h1 = msgbox(sprintf('MATCH NOT FOUND! \nHD VALUE =% 2.3g AND MATCHING QUOTIENT =% 2.3g' , hd ,matching_quotient), 'FAILED');
set(h1, 'position', [400 300 220 100]); %makes box bigger
%fprintf('HD value --- %f \n',hd);
end
 end
end

case 'Train System'
     
    get(0,'DefaultUicontrolBackgroundColor');
    set(0,'DefaultUicontrolBackgroundColor','[0.75, 0.75, 0.75]')
    d2 = questdlg('PLEASE SELECT THE FOLDER CONTAINING IRIS IMAGE!', ...
                   'WELCOME TO IRIS RECOGNITION SYSTEM!', ...
                   'OK','Cancel','OK');

switch d2
    case 'OK'
% uiwait(d2);
TrainSystem();
end
end
