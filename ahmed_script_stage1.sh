Script for stage 1

mkdir AHMED
mkdir biocomputing 
cd biocomputing
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
mv wildtype.fna /home/ahmed/AHMED
rm wildtype.gbk.1
grep -o "tata"  wildtype.fna | wc -l
grep -o "tatatata"  wildtype.fna | wc -l
grep -o “tatatata” wildtype.fna | wc -l$ wget -O SNAP25.fasta "https://www.ncbi.nlm.nih.gov/nuccore/NM_003081.4?report=fasta"
grep -v '^>' SNAP25.fasta | wc -l  
grep -v '^>' SNAP25.fasta | wc -l
grep -o 'A' SNAP25.fasta | wc -l
grep -o 'G' SNAP25.fasta | wc -l
grep -o 'C' SNAP25.fasta | wc -l
grep -o 'T' SNAP25.fasta | wc -l

 G_count=$(grep -o 'G' SNAP25.fasta | wc -l)
C_count=$(grep -o 'C' SNAP25.fasta | wc -l)
total_GC=$((G_count + C_count))
total_nucleotides=$(grep -v '^>' SNAP25.fasta | tr -d '\n' | wc -c)
GC_percentage=$(echo "scale=2; ($total_GC / $total_nucleotides) * 100" | bc)
echo "GC content: $GC_percentage%"

touch dorothy-hodgkin.fasta
$ echo "$A" >> dorothy-hodgkin.fasta
$ echo "$G" >> dorothy-hodgkin.fasta
$ echo "$C" >> dorothy-hodgkin.fasta
$ echo "$T" >> dorothy-hodgkin.fasta
$ crtl+l
history
conda activate base
conda create -n funtools
conda activate funtools
sudo apt-get install figlet
figlet dorothy
figlet AHMED
figlet dorothy hodgkins
conda config --add channels bioconda
conda config --add channels conda-forge
conda install bwa
conda install blast
conda install samtools
conda install bedtools
conda install -c bioconda spades
conda install -c bioconda bcftools
conda install -c bioconda fastp
conda install -c bioconda multiqc


#!/bin/bash


spidroin="GTGGATATGGAGGTCTTGGTGGACAAGGTGCCGGACAAGGAGCTGGTGCAGCCGCCGCAGCAGCAGCTGG
TGGTGCCGGACAAGGAGGATATGGAGGTCTTGGAAGCCAAGGTGCTGGACGAGGTGGACAAGGTGCAGGC
GCAGCCGCAGCCGCAGCTGGAGGTGCTGGTCAAGGAGGATACGGAGGTCTTGGAAGCCAAGGTGCTGGAC
GAGGAGGATTAGGTGGACAAGGTGCAGGTGCAGCAGCAGCAGCTGGAGGTGTCGGACAAGGAGGACTAGG
TGGACAAGGTGCTGGACAAGGAGCTGGAGCAGCTGCTGCAGCAGCTGGTGGTGCCGGACAAGGAGGATAT
GGAGGTCTCGGAAGCCAAGGTGCAGGACGAGGTGGATCAGGTGGACAAGGGGCAGGTGCAGCAGCAGCAG
CAGCTGGAGGTGCCGGACAAGGAGGATATGGAGGTCTTGGAAGCCAAGGTGCAGGACGAGGTGGATTAGG
TGGACAGGGTGCAGGTGCAGCAGCAGCAGCAGCAGCCGGAGGTGCTGGACAAGGAGGATACGGTGGTCTT
GGTGGACAAGGTGCCGGACAAGGTGGCTATGGAGGACTTGGAAGCCAAGGTGCTGGACGAGGAGGATTAG
GTGGACAAGGTGCAGGTGCAGCAGCAGCAGCTGGAGGTGCCGGACAAGGAGGACTAGGTGGACAAGGAGC
TGGAGCAGCCGCTGCAGCAGCTGGTGGTGCCGGACAAGGAGGATATGGAGGTCTTGGAAGCCAAGGTGCT
GGACGAGGTGGACAAGGTGCAGGCGCAGCCGCAGCAGCAGCCGGAGGTGCTGGACAAGGAGGATACGGTG
GACAAGGTGCCGGACAAGGAGGCTATGGAGGACTTGGAAGCCAAGGTGCTGGACGAGGAGGATTAGGTGG
ACAAGGTGCAGGTGCAGCAGCAGCAGCAGCAGCAGCTGGAGGTGCCGGACAAGGAGGATTAGGTGGACAA
GGTGCAGGTGCAGCAGCAGCAGCAGCTGGAGGTGCTGGACAAGGAGGATTAGGTGGACAAGGTGCTGGAC
AAGGAGCTGGAGCAGCCGCTGCAGCAGCCGCTGCAGCAGCTGGTGGTGTTAGACAAGGAGGATATGGAGG
TCTTGGAAGCCAAGGTGCTGGACGAGGTGGACAAGGTGCAGGCGCAGCCGCAGCAGCAGCCGGAGGTGCT
GGACAAGGAGGATATGGTGGTCTTGGTGGACAAGGTGTTGGACGAGGTGGATTAGGTGGACAAGGTGCAG
GCGCAGCGGCAGCTGTTGGTGCTGGACAAGGAGGATATGGTGGTGTTGGTTCTGGGGCGTCTGCTGCCTC
TGCAGCTGCATCCCGTTTGTCTTCTCCTCAAGCTAGTTCAAGAGTTTCATCAGCTGTTTCCAACTTGGTT
GCAAGTGGTCCTACTAATTCTGCGGCCTTGTCAAGTACAATCAGTAATGTGGTTTCACAAATAGGCGCCA
GCAATCCTGGTCTTTCTGGATGTGATGTCCTCATTCAAGCTCTTCTCGAGGTTGTTTCTGCTCTTATCCA
GATCTTAGGTTCTTCCAGCATCGGCCAAGTTAACTATGGTTCCGCTGGACAAGCCACTCAGATCGTTGGT
CAATCAGTTTATCAAGCCCTAGGTTAAATGTAAAATCAAGAGTTGCTAAAACTTAATGAATCGGGCTGTT
AAATTTGTGTTAGTTTTAAAATATTTTCAATAAATATTATGCATAT"


# Count occurrences of each nucleotide
A=$(echo "$spidroin" | grep -o "A" | wc -l)
G=$(echo "$spidroin" | grep -o "G" | wc -l)
C=$(echo "$spidroin" | grep -o "C" | wc -l)
T=$(echo "$spidroin" | grep -o "T" | wc -l)


# Print the counts of each nucleotide
echo "Adenine is $A"
echo "Guanine is $G"
echo "Cytosine is $C"
echo "Thymine is $T"


# Calculate and print the total number of GC pairs
GC=$((G + C))
echo "Total number of GC pairs: $GC"


# Calculate and print the total number of nucleotides
total=$((A + G + C + T))
echo "Total number of nucleotides: $total"


# Calculate and print the percentage of GC pairs
percentage=$(echo "scale=2; $GC / $total * 100" | bc)
echo "Percentage of GC pairs: $percentage"