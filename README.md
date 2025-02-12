If you benefit from this repository, please cite this paper:

[1] Amr Ezz El-Din Rashed, Marwa Obaya, Hossam El~Din Moustafa,
Accelerating DNA pairwise sequence alignment using FPGA and a customized convolutional neural network,
Computers & Electrical Engineering, Volume 92, 2021, 107112, ISSN 0045-7906,
https://doi.org/10.1016/j.compeleceng.2021.107112.
(https://www.sciencedirect.com/science/article/pii/S0045790621001178)

Abstract: 

An optimized software and hardware digital implementation of two widely used DNA sequence alignment algorithms based on lookup table(LUT) is illustrated in this study.
These algorithms are the best means for identifying similar regions between sequences. The proposed implementation relies on the complete parallelization of these foundational algorithms under certain limitations to overcome most of the problems of dynamic programming and hardware implementation.
The proposed method takes O(N/4) calculation steps, where N is the length of each sequence with a minimum value of four (i.e., N = 4,8,12,…).
A performance comparison between the state of art and our proposed algorithm is conducted for software and hardware implementation. 
Combinational circuits are used for FPGA-based hardware implementation of DNA sequence alignment algorithms. Performance and device resource usage are evaluated for different hardware designs.
A customized convolution neural network model is used to implement global alignment and achieve 98.3% accuracy.
Keywords: Bioinformatics; DNA; Pairwise sequence alignment (PWSA); Field programmable gate array (FPGA); Espresso algorithm; Smith–Waterman (SW) algorithm; Needleman–Wunsch (NW) algorithm; Convolution neural network (CNN)

[2] A. E. E. -D. Rashed, H. M. Amer, M. El-Seddek and H. E. -D. Moustafa, "Sequence Alignment Using Machine Learning-Based Needleman–Wunsch Algorithm," in IEEE Access, vol. 9, pp. 109522-109535, 2021, doi: 10.1109/ACCESS.2021.3100408.

Abstract:
Biological pairwise sequence alignment can be used as a method for arranging two biological sequence characters to identify regions of similarity.
This operation has elicited considerable interest due to its significant influence on various critical aspects of life (e.g., identifying mutations in coronaviruses). 
Sequence alignment over large databases cannot yield results within a reasonable time, power, and cost. heuristic methods, such as FASTA, the BLAST family have been demonstrated to perform 40 times faster than DP-based (e.g., Needleman–Wunsch) techniques they cannot guarantee an optimum alignment result An optimized software platform of a widely used DNA sequence alignment algorithm called the Needleman–Wunsch (NW) algorithm based on a lookup table, is described in this study. 
This global alignment algorithm is the best approach for identifying similar regions between sequences. This study presents a new application of classical machine learning (ML) to global sequence alignment. Customized ML models are used to implement NW global alignment. 
An accuracy of 99.7% is achieved when using a multilayer perceptron with the ADAM optimizer, and up to 2912 Giga cell updates per second are realized on two real DNA sequences with a length of 4.1 M nucleotides. Our implementation is valid for RNA/DNA sequences. 
This study aims to parallelize the computation steps involved in the algorithm to accelerate its performance by using ML algorithms.
All datasets used in this study are available from https://ieee-dataport.org/documents/dna-sequence-alignment-datasets-based-nw-algorithm.

keywords:
{DNA;Machine learning algorithms;Heuristic algorithms;Classification algorithms;RNA;Graphics processing units;Approximation algorithms;Bioinformatics;DNA;RNA;pairwise sequence alignment (PWSA);Needlema–Wunsch (NW) algorithm;machine learning (ML) algorithms;multilayer perceptron (MLP);XGBoost algorithm},

URL: https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=9497110&isnumber=9312710




IEEE DATAPORT :

https://ieee-dataport.org/keywords/needleman%E2%80%93wunsch-nw-algorithm#:~:text=This%20study%20presented%20six%20datasets%20for%20DNA%2FRNA%20sequence,the%20NW%20algorithm%20by%20using%20machine%20learning%20techniques.
