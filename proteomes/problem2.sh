#This script generates a HMM profile for transporter genes
#and uses HMMer to search the eight bacterial proteomes

#Usage: ./problem2.sh

#HMM profile for transporter
~/local/bin/hmmbuild transporter_combined.hmm transporter_alligned.allign

#Create .csv file for the 8 proteomes
for temp in "Arthrobacter.fasta" "Bacillus.fasta" "Clostridium.fasta" "Flavobacterium.fasta" "Limnohabitans.fasta" "Rhizobium.fasta" "Roseobacter.fasta" "Verrucomicrobia.fasta"
do
~/local/bin/hmmsearch --tblout "${temp%.fasta}.csv" transporter_combined.hmm $temp
done

#Records file name and number of hits to HMM profile
for temp in *.csv
do
echo "${temp%.csv}.fasta"
grep -v "#" $temp|wc -l
done > HMM_Profile_Hits.txt
