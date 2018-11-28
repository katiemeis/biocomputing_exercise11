#hmmbuild and search functions 
#usage: bash hmm.sh
#in proteomes directory

/afs/nd.edu/user6/charrin3/local/bin/hmmbuild hmmtransporter ../muscletransportaligned.txt

for file in *.fasta
do 
	/afs/nd.edu/user6/charrin3/local/bin/hmmsearch --tblout "alignment_$file" hmmtransporter "$file" 
done

for file in alignment_*
do 
	echo $file >> finalhits.txt
	grep -v "#" $file | wc -l >> finalhits.txt
done


