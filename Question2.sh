###Usage: bash Question2.sh

#Generates HMM profile for transporter
../../local/bin/hmmbuild transporter.hmm transporter_aligned.fasta

#Uses HMMer to search 8 bacterial proteosomes
for file in ../Lecture21files/*.fasta
do
echo $file >> matchestransporter.txt
../../local/bin/hmmsearch --tblout transporter.hits transporter.hmm $file
grep -v "#" transporter.hits | wc -l >> matchestransporter.txt
echo matchestransporter.txt created
done

