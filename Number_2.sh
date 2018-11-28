# This code assumes that the output from Number_1.sh is in the current directory (for me ~/local/bin/)
./hmmbuild tempStore.fasta transporters.fasta

# This assumes that the current directory is the parent of proteomes/
for file in ./proteomes/*
do
# Here we create/add_to the txt file containing the number of hits for the transporter in the genomes
echo $file >> NAME_NUMBER.txt
./hmmsearch --tblout hmm$count.hits tempStore.fasta $file
cat hmm$count.hits | grep -v "#" | wc -l >>NAME_NUMBER.txt
echo "" >> NAME_NUMBER.txt
done
