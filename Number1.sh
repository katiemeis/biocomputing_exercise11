#Takes four "sporecoat" files and puts them in a single file for alligning
#Takes four "transporter" files and puts them in a single file for alligning
#Generates two sequence allignments - one for spore gene and one for transporter gene

#Usage: bash Number1.sh

#Makes one "sporecoat" file for alligning

for x in "sporecoat0[1-4].fasta"
do
sed -e '$s/$/\n/' $x
done > sporecoat_genes.fasta

#Makes one "transporter" file for alligning

for y in "transporter0[1-4].fasta"
do
sed -e '$s/$/\n/' $y
done > transporter_genes.fasta

#Generate sporecoat allignment

~/muscle3.8.31_i86linux64 -in sporecoat_genes.fasta -out sporecoat_genes.allign

#Generate transporter allignment

~/muscle3.8.31_i86linux64 -in transporter_genes.fasta -out transporter_genes.allign
