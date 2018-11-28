#generate 2 sequence alignments: one for spore formation and one for transporter genes
#usage: bash alignmentscript.sh 


#to put new line character at end of each file
for file in /afs/nd.edu/user6/charrin3/local/biocomputing/biocomputing_exercise11/gene_sequences/*.fasta
do
	sed -i -e '$a\' $file
done 

#to run muscle for alignments
cat gene_sequences/*sporecoat* > muscleinputspore.fasta
../muscle3.8.31_i86linux64 -in muscleinputspore.fasta -out musclesporealigned.txt

cat gene_sequences/*transporter*>muscleinputtransport.fasta
../muscle3.8.31_i86linux64 -in muscleinputtransport.fasta -out muscletransportaligned.txt

