#!/bin/bash
#part 2
#build hmm transporter file, hmmsearch with 8 proteosome fasta files, and output names and number of hits to new file
#usage script_2.sh

~/local/bin/hmmbuild transporter.hmm ~/biocomp/biocomputing_exercise11/transporter_align.fasta

for i in ~/biocomp/biocomputing_exercise11/proteomes/*.fasta
do
~/local/bin/hmmsearch --tblout "${i%.fasta}.csv" transporter.hmm $i
done

for j in ~/biocomp/biocomputing_exercise11/proteomes/*.csv
do
echo $(basename -s .csv "$j")
grep -v '#' "$j" | wc -l
done >> HMM_Proteome_Hits.txt

