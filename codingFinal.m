function [] = codingFinal ()
close all;
global gui;

%this gui coding sets up the blank plot, and then goes on to set up the
%text boxes for the x and y coordinates, the plot button, and the two radio
%control buttion groups that toggle between shape and color.

gui.fig = figure();
gui.p = plot(0,0);
gui.p.Parent.Position = [0.15 0.2 0.75 0.75];
gui.titleEditBox = uicontrol('style','edit','units','normalized','position',[0.425 0.955 0.2 0.04]);

gui.xText = uicontrol('style','text','units','normalized','position',[0.1 0.1 0.1 0.05],'string','x values');
gui.xEditBox = uicontrol('style','edit','units','normalized','position',[0.1 0.05 0.1 0.05]);
gui.yText = uicontrol('style','text','units','normalized','position',[0.25,0.1 0.1,0.05],'string','y values');
gui.yEditBox = uicontrol('style','edit','units','normalized','position',[0.25 0.05 0.1 0.05]);

gui.xlimText = uicontrol('style','text','units','normalized','position',[0.7 0.1 0.1 0.05],'string','x axis');
gui.xlimEditBox = uicontrol('style','edit','units','normalized','position',[0.7 0.05 0.1 0.05]);
gui.ylimText = uicontrol('style','text','units','normalized','position',[0.85 0.1 0.1,0.05],'string','y axis');
gui.ylimEditBox = uicontrol('style','edit','units','normalized','position',[0.85 0.05 0.1 0.05]);

gui.buttonGroup = uibuttongroup('visible','on','unit','normalized','position',[0 0.6 0.1 0.25],'selectionchangedfcn',{@radioselect});
gui.r1 = uicontrol(gui.buttonGroup,'style','radiobutton','units','normalized','position',[.1 .8 1 .2],'HandleVisibility','off','string','Red');
gui.r2 = uicontrol(gui.buttonGroup,'style','radiobutton','units','normalized','position',[.1 .5 1 .2],'HandleVisibility','off','string','Blue');
gui.r3 = uicontrol(gui.buttonGroup,'style','radiobutton','units','normalized','position',[.1 .2 1 .2],'HandleVisibility','off','string','Green');

gui.buttonGroup2 = uibuttongroup('visible','on','unit','normalized','position',[0 0.2 0.1 0.25],'selectionchangedfcn',{@radioselect});
gui.r1 = uicontrol(gui.buttonGroup2,'style','radiobutton','units','normalized','position',[.1 .8 1 .2],'HandleVisibility','off','string','Line');
gui.r2 = uicontrol(gui.buttonGroup2,'style','radiobutton','units','normalized','position',[.1 .5 1 .2],'HandleVisibility','off','string','Star');
gui.r3 = uicontrol(gui.buttonGroup2,'style','radiobutton','units','normalized','position',[.1 .2 1 .2],'HandleVisibility','off','string','X');

gui.resetButton = uicontrol('style','pushbutton','units','normalized','position',[0.475 0.05 .1 .05],'string','Reset','callback',{@reset});
gui.button = uicontrol('style','pushbutton','string','plot!','units','normalized','position',[0.925 0.5 0.05 0.2],'callback',@buttonCallback);


end
 
function[] = radioselect(~,~)
    buttonCallback()
end

function [] = reset(~,~)
close all;
global gui;

%this gui coding sets up the blank plot, and then goes on to set up the
%text boxes for the x and y coordinates, the plot button, and the two radio
%control buttion groups that toggle between shape and color. In the reset,
%it is practically a copy of the begining, it wipes the old figure with
%"close all" then repones a fresh figure.

gui.fig = figure();
gui.p = plot(0,0);
gui.p.Parent.Position = [0.15 0.2 0.75 0.75];
gui.titleEditBox = uicontrol('style','edit','units','normalized','position',[0.425 0.955 0.2 0.04]);

gui.xText = uicontrol('style','text','units','normalized','position',[0.1 0.1 0.1 0.05],'string','x values');
gui.xEditBox = uicontrol('style','edit','units','normalized','position',[0.1 0.05 0.1 0.05]);
gui.yText = uicontrol('style','text','units','normalized','position',[0.25,0.1 0.1,0.05],'string','y values');
gui.yEditBox = uicontrol('style','edit','units','normalized','position',[0.25 0.05 0.1 0.05]);

gui.xlimText = uicontrol('style','text','units','normalized','position',[0.7 0.1 0.1 0.05],'string','x axis');
gui.xlimEditBox = uicontrol('style','edit','units','normalized','position',[0.7 0.05 0.1 0.05]);
gui.ylimText = uicontrol('style','text','units','normalized','position',[0.85 0.1 0.1,0.05],'string','y axis');
gui.ylimEditBox = uicontrol('style','edit','units','normalized','position',[0.85 0.05 0.1 0.05]);

gui.buttonGroup = uibuttongroup('visible','on','unit','normalized','position',[0 0.6 0.1 0.25],'selectionchangedfcn',{@radioselect});
gui.r1 = uicontrol(gui.buttonGroup,'style','radiobutton','units','normalized','position',[.1 .8 1 .2],'HandleVisibility','off','string','Red');
gui.r2 = uicontrol(gui.buttonGroup,'style','radiobutton','units','normalized','position',[.1 .5 1 .2],'HandleVisibility','off','string','Blue');
gui.r3 = uicontrol(gui.buttonGroup,'style','radiobutton','units','normalized','position',[.1 .2 1 .2],'HandleVisibility','off','string','Green');

gui.buttonGroup2 = uibuttongroup('visible','on','unit','normalized','position',[0 0.2 0.1 0.25],'selectionchangedfcn',{@radioselect});
gui.r1 = uicontrol(gui.buttonGroup2,'style','radiobutton','units','normalized','position',[.1 .8 1 .2],'HandleVisibility','off','string','Line');
gui.r2 = uicontrol(gui.buttonGroup2,'style','radiobutton','units','normalized','position',[.1 .5 1 .2],'HandleVisibility','off','string','Star');
gui.r3 = uicontrol(gui.buttonGroup2,'style','radiobutton','units','normalized','position',[.1 .2 1 .2],'HandleVisibility','off','string','X');

gui.resetButton = uicontrol('style','pushbutton','units','normalized','position',[0.475 0.05 .1 .05],'string','Reset','callback',{@reset});
gui.button = uicontrol('style','pushbutton','string','plot!','units','normalized','position',[0.925 0.5 0.05 0.2],'callback',@buttonCallback);


end


function [] = buttonCallback(~,~)
global gui;

x = str2num(gui.xEditBox.String);
y = str2num(gui.yEditBox.String);

X = str2num(gui.xlimEditBox.String);
Y = str2num(gui.ylimEditBox.String);


% this if statement makes the inputs for our axes be in the [digit digit]
% format. 
if length(X) > 2 || length(Y) > 2
    msgbox('Incorrect Inputs!','Graphing Error','error','modal')
end


%this if statement makes sure that you input the correct amount of x inputs
%and y inputs at the same time. 
if length(x) ~= length(y)
    msgbox('Incorrect Inputs!','Graphing Error','error','modal')
end
  




  
data = gui.buttonGroup.SelectedObject.String;
data2 = gui.buttonGroup2.SelectedObject.String;
plottedValues(data); 
plottedValue(data2);


function [] = plottedValues(data)
% this function is what decides the color based off of what you chose
   if strcmp(data,'Red')
             plot(x,y,'r')
         
      elseif strcmp(data,'Blue')
             plot(x,y,'b')
         
      elseif strcmp(data,'Green')
              plot(x,y,'g')
             
    end
end


function [] = plottedValue(data2)
    %this function changes the shape of the data that you entered.
   if strcmp(data2,'Line')    
          plot(x,y)
         
      elseif strcmp(data2,'Star')
          plot(x,y,'*')
      
      elseif strcmp(data2,'X')
          plot(x,y,'x')
    
   end
end

end

