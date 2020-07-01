clc;
clear all;
close all;

AA=load('Make_a_txt_file_after_copying_the_descriptors.txt');
AA=AA';

load BoseWestmorelandNet.mat
Y=zeros(size(AA,2),500);

for k=1:500
   Ys=BoseWestmorelandNet{k}(AA);
   Y(:,k)=Ys;
end

for i=1:size(AA,2)
    TEICS70_out(i,1)=mean(Y(i,:));  %%%%% n-hexane's cross section was assigned to be 20.0 x 10^-16 cm^2 previously. 
    TEICS70_out(i,2)=std(Y(i,:))/sqrt(500)*1.6479; %%%% 1.6479 is the multipler for the 95% confidence level from t-stat
end

fid = fopen('Output.txt', 'w');
fwrite(fid, TEICS70_out);
fclose(fid);