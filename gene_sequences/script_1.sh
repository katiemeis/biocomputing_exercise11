#!/bin/bash
#usage bash script.sh in gene_sequences directory
#add newline and concatenate fasta files together then use muscle to align sequences
for i in "sporecoat0[1-4].fasta"
do
sed -e '$s/$/\n/' $i
done >> sporecoat.fasta

for j in "transporter0[1-4].fasta"
do
sed -e '$s/$/\n/' $j
done >> transporter.fasta

#alignments
~/muscle3.8.31_i86linux64 -in sporecoat.fasta -out sporecoat_align.fasta
~/muscle3.8.31_i86linux64 -in transporter.fasta -out transporter_align.fasta
