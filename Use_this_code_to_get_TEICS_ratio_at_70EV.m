clc;
clear all;
close all;

AA=load('Make_a_txt_file_after_copying_the_descriptors.txt');
AA=AA';

load gregnet.mat
Y=zeros(size(AA,2),500);

for k=1:500
   Ys=gregnet{k}(AA);
   Y(:,k)=Ys;
end

for i=1:size(AA,2)
    TEICS70_out(i,1)=mean(Y(i,:))/20;  %%%%% n-hexane's cross section was assigned to be 20 previously.
    TEICS70_out(i,2)=std(Y(i,:))/20;   %%%%% now it is scaled to unity.
end