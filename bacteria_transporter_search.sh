# bacteria_transport_search.sh
# usage: run this in folder with all 8 bacteria files and transporter.fasta.align file
# write a shell script that generates hmm profile for the transporter gene and uses HMMer to search the 8 bacterial proteomes provides as fasta file
# Script should record the file name and the number of hits to the HMM profile in each proteome in a single text file


# go through loop for every bacteria
for file in *.fasta 
do
# path/to/hmmbuild outputfile input.fasta.align
/afs/nd.edu/user32/cgrabow1/local/bin/hmmbuild refs.hmm transporter_prealigned_02.fasta.align

# path/to/hmmsearch hmm_to_search_with to_be_searched.fasta
/afs/nd.edu/user32/cgrabow1/local/bin/hmmsearch --tblout resultshmm_01.txt refs.hmm $file

# send the filename to the output text file
echo $file ";" >> searchOutput_02.txt

# count the number of matches, send that value to the text file
cat resultshmm_01.txt | grep -v "#" | wc -l >> searchOutput_02.txt

# new line to aid in visualization
echo " " >> searchOutput_02.txt


 
done

