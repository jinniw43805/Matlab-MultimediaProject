function varargout = FinalReport(varargin)
% FINALREPORT MATLAB code for FinalReport.fig
%      FINALREPORT, by itself, creates a new FINALREPORT or raises the existing
%      singleton*.
%
%      H = FINALREPORT returns the handle to a new FINALREPORT or the handle to
%      the existing singleton*.
%
%      FINALREPORT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINALREPORT.M with the given input arguments.
%
%      FINALREPORT('Property','Value',...) creates a new FINALREPORT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FinalReport_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FinalReport_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FinalReport

% Last Modified by GUIDE v2.5 14-Jun-2015 03:18:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FinalReport_OpeningFcn, ...
                   'gui_OutputFcn',  @FinalReport_OutputFcn, ...
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


% --- Executes just before FinalReport is made visible.
function FinalReport_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FinalReport (see VARARGIN)

% Choose default command line output for FinalReport
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FinalReport wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FinalReport_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global im;
[filename ,pathname]=uigetfile({'*.jpg';'*.bmp';'*.tif'},'¿ï¾Ü¹Ï¤ù');
str=[pathname filename];
im=imread(str);
[row col] = size(im);
axes(handles.axes1);
imshow(im);


function pushbutton2_Callback(hObject, eventdata, handles)

function pushbutton3_Callback(hObject, eventdata, handles)
global im
im_gray=rgb2gray(im);
axes(handles.axes1);
imshow(im_gray);

function pushbutton4_Callback(hObject, eventdata, handles)
global im
im_bw=im2bw(im,.57);