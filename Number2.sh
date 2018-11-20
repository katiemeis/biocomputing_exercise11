#Generates a HMM profile for the transporter gene
#Used HMMer to search the 8 bacterial proteomes provided as fasta files

#Usage: bash Number2.sh

#Generate an HMM profile for the transporter gene

~/local/bin/hmmbuild transporter_gene.hmm transporter_genes.allign

#Generates table out for each of the 8 bacterial proteomes (after hmm search)

for a in "Arthrobacter.fasta" "Bacillus.fasta" "Clostridium.fasta" "Flavobacterium.fasta" "Limnohabitans.fasta" "Rhizobium.fasta" "Roseobacter.fasta" "Verrucomicrobia.fasta"
do
~/local/bin/hmmsearch --tblout "${a%.fasta}.csv" transporter_gene.hmm $a
done

#Records file name and number of hits to HMM profile in each proteome and places that in a single txt file

for b in *.csv
do
echo "${b%.csv}.fasta"
grep -v "#" $b|wc -l
done > HMM_Proteome_Hits.txt
