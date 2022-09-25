clear;
clc;

[name pth]=uigetfile('*.jpg*', 'selectfile');
image=imread([pth name]);
image=rgb2gray(image);
image=imresize(image,[200 200]);

t_img=statxture(image);
t_img=t_img(:);

v2=0;
for i=1:3
smp=imread(['Samples\TX (' num2str(i) ').jpg']);
t=statxture(smp);
t=t(:);
v1=corr(t,t_img);
if v1>v2
v2=v1;
tx=i;
end
end

if tx==1
display('Saf');
elseif tx==2
display('Zebr');
elseif tx==3
display('Motanaveb');
end