#Script to generate two sequences alignments
#One for spore formation and one for transporter genes
#Usage: ./problem1.sh

#Combine sporecoat
for temp in "sporecoat0[1-4].fasta"
do
sed -e '$s/$/\n/' $temp
done > sporecoat_combined.fasta

#Combine transporter
for temp in "transporter0[1-4].fasta"
do
sed -e '$s/$/\n/' $temp
done > transporter_combined.fasta

#Sporecoat allignment
~/muscle3.8.31_i86linux64 -in sporecoat_combined.fasta -out sporecoat_alligned.allign

#Transporter allignment
~/muscle3.8.31_i86linux64 -in transporter_combined.fasta -out transporter_alligned.allign
