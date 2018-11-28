###Usage: bash Question1.sh
###Combines sporecoat files into single file for alignment
###Combines transporter files into single file for alignment
###Generates sporecoat and transporter sequence alignments

#Combine 4 sporecoat files into one file
for file in sporecoat0*.fasta
do
sed -e '$s/$/\n/' $file
done > sporecoat_combined.fasta
echo sporecoat_combined.fasta created

#Combine 4 transporter files into one file
for file in transporter0*.fasta
do
sed -e '$s/$/\n/' $file
done > transporter_combined.fasta
echo transporter_combined.fasta created

###Upload combined files to remote computer for alignment 



