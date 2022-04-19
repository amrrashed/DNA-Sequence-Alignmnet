clear;clc
load matrix3.mat alig
[Header, seq1] = fastaread("C:\Users\amr_r\OneDrive\Desktop\ieee paper\software\NC_000913.3.fasta");
[Header2, seq2] = fastaread("C:\Users\amr_r\OneDrive\Desktop\ieee paper\software\NC_000962.3.fasta");
% seq1=gpuArray(seq1);
querylength=1000;
T1='0';
seqq=repmat(T1,querylength,16);
seq1=reshape(seq1(1:querylength),querylength/4,4);
seq2=reshape(seq2(1:querylength),querylength/4,4);
file1 = fopen('inputseq.txt','w');%binary input sequnce to SW 
file2 = fopen('outputalign.txt','w');%output of ROM
for i=1:length(seq1)
seqq(i,:)=tr2([seq1(i,:),seq2(i,:)]);
fprintf(file1,'%16s \n',seqq(i,:));
seq(i)=bin2dec(tr2([seq1(i,:),seq2(i,:)]));
%b starts from 0 in location 1
out(i,:)=trx(alig(seq(i)+1,:));
fprintf(file2,'%12s \n',out(i,:));
end
fclose(file1);
fclose(file2);
%testbench output file
file3 = fopen('D:\vhdl codes\project1\output_results.txt','r');
testoutfile = textscan(file3,'%12s');
type inputseq.txt 
type outputalign.txt