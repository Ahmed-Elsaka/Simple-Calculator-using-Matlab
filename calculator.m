function varargout = calculator(varargin)
% CALCULATOR MATLAB code for calculator.fig
%      CALCULATOR, by itself, creates a new CALCULATOR or raises the existing
%      singleton*.
%
%      H = CALCULATOR returns the handle to a new CALCULATOR or the handle to
%      the existing singleton*.
%
%      CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATOR.M with the given input arguments.
%
%      CALCULATOR('Property','Value',...) creates a new CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculator

% Last Modified by GUIDE v2.5 20-Dec-2018 18:32:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @calculator_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before calculator is made visible.
function calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calculator (see VARARGIN)
global operation;
global num1 ;
global num2;
operation = '.';
num1='';
num2 = '';
% her you can declear global variables 

% Choose default command line output for calculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in x_btn.
function x_btn_Callback(hObject, eventdata, handles)
% hObject    handle to x_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in y_bnt.
function y_bnt_Callback(hObject, eventdata, handles)
% hObject    handle to y_bnt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in comma_btn.
function comma_btn_Callback(hObject, eventdata, handles)
% hObject    handle to comma_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in semi_comma_btn.
function semi_comma_btn_Callback(hObject, eventdata, handles)
% hObject    handle to semi_comma_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in one_btn.
function one_btn_Callback(hObject, eventdata, handles)
insertNumber('1',handles);

% hObject    handle to one_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in two_btn.
function two_btn_Callback(hObject, eventdata, handles)
insertNumber('2',handles);
% hObject    handle to two_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in three_btn.
function three_btn_Callback(hObject, eventdata, handles)
insertNumber('3',handles);
% hObject    handle to three_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in add_btn.
function add_btn_Callback(hObject, eventdata, handles)
set(handles.op_lbl,'string','+');
global operation;
operation = '+';

% hObject    handle to add_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in four_btn.
function four_btn_Callback(hObject, eventdata, handles)
insertNumber('4',handles);
% hObject    handle to four_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in five_btn.
function five_btn_Callback(hObject, eventdata, handles)
insertNumber('5',handles);
% hObject    handle to five_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in six_btn.
function six_btn_Callback(hObject, eventdata, handles)
insertNumber('6',handles);
% hObject    handle to six_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in sub_btn.
function sub_btn_Callback(hObject, eventdata, handles)
set(handles.op_lbl,'string','-');
global operation;
operation = '-';
% hObject    handle to sub_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in seven_btn.
function seven_btn_Callback(hObject, eventdata, handles)
insertNumber('7',handles);
% hObject    handle to seven_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in eight_btn.
function eight_btn_Callback(hObject, eventdata, handles)
insertNumber('8',handles);
% hObject    handle to eight_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in nine_btn.
function nine_btn_Callback(hObject, eventdata, handles)
insertNumber('9',handles);
% hObject    handle to nine_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in mul_btn.
function mul_btn_Callback(hObject, eventdata, handles)
set(handles.op_lbl,'string','*');
global operation;
operation = '*';

% hObject    handle to mul_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in open_brace_btn.
function open_brace_btn_Callback(hObject, eventdata, handles)
% hObject    handle to open_brace_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in close_brace_btn.
function close_brace_btn_Callback(hObject, eventdata, handles)
% hObject    handle to close_brace_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
%draw_axes
v = get(hObject,'Value');
axes(handles.draw_axes);
if(v ==2)
    xaxis=[0:0.01:5];
    yaxis= exp(-1.5*xaxis).*sin(10*xaxis);
    plot(xaxis,yaxis)  
else
    cla reset
end
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in dev_btn.
function dev_btn_Callback(hObject, eventdata, handles)
set(handles.op_lbl,'string','/');
global operation;
operation = '/';
% hObject    handle to dev_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in equal_btn.
function equal_btn_Callback(hObject, eventdata, handles)
global operation ;
value1  = str2double(get(handles.num1_lbl,'string'));
value2  = str2double(get(handles.num2_lbl,'string'));
result = '';
switch(operation)
   case '+' 
      result = value1 + value2;
      
   case '-' 
     result = value1 - value2;
   case '*' 
      result = value1 * value2;
   case '/'
       if(value2 == 0)
       set(handles.lbl_status,'string','Status : invalid operation');
       else
          result = value1 / value2; 
       end
   otherwise
       set(handles.lbl_status,'string','Status : invalid operation');
end

   set(handles.lbl_result,'string',result)
   axes(handles.image_axis);
   if( result < 60)
       myImage = imread('fiat.jpg');
   else
        myImage = imread('lam.jpg');
   end
    imshow(myImage);
   operation = '.';
   global num1;
   global num2 ; 
   num1 = '';
   num2 = '';
   set(handles.num1_lbl,'string','0');
   set(handles.num2_lbl,'string','0');

% hObject    handle to equal_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function s = insertNum(num)
function insertNumber(num,handles)
global operation;
global num1 ;
global num2;
disp(operation);
if(operation =='.')
    if(length(num1) <8)
        num1 = strcat(num1,num);
        set(handles.num1_lbl,'string',num1);
    end
else
    if(length(num2) < 10)
        num2 = strcat(num2,num);
        set(handles.num2_lbl,'string',num2);
    end
end
disp(num);
        

% --- Executes on button press in on_btn.
function on_btn_Callback(hObject, eventdata, handles)
setappdata(0,'str','');
set(handles.num1_lbl,'string','');
% hObject    handle to on_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in off_btn.
function off_btn_Callback(hObject, eventdata, handles)
% hObject    handle to off_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in clr_bnt.
function clr_bnt_Callback(hObject, eventdata, handles)
global operation ;
global num1; 
global num2 ; 
operation = '.';
num1 = '';
num2 = '';
set(handles.num2_lbl,'string','0');
set(handles.num1_lbl,'string','0');
% hObject    handle to clr_bnt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in del_btn.
function del_btn_Callback(hObject, eventdata, handles)
global operation;
if(operation == '.')
    set(handles.num1_lbl,'string','0');
else
    set(handles.num2_lbl,'string','0');
end
% hObject    handle to del_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in zero_btn.
function zero_btn_Callback(hObject, eventdata, handles)
insertNumber('0',handles);
% hObject    handle to zero_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
