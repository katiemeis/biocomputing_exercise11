# spore_transport.sh
# usage: bash spore_transport.sh (sporecoat*.fast transporter*.fasta) -> may need to include this but probably not
# This code Takes in the files with either sporecoat or transporter in the filename
# Generates a sequence alignment for both the sporecoat files and the transporter files
# files need to be combined together first by appending files with a newline character at the end of each one

# go through all files with sporecoat in the name and combine them into one long fasta file
for file in sporecoat*.fasta
do
sed '$ a \n' $file >> sporecoat_prealigned_02.fasta

done

# go through all files with transporter in the name and combine them into one long fasta file
for file2 in transporter*.fasta
do
sed '$ a \n' $file2 >> transporter_prealigned_02.fasta
done

# now that we have our prealigned fasta files, use hammer to align them
# path/to/muscle_long_name -in input.fasta -out input.fasta.align

# do it for sporecoat file
/afs/nd.edu/user32/cgrabow1/muscle3.8.31_i86linux64 -in sporecoat_prealigned_02.fasta -out sporecoat_prealigned_02.fasta.align

# do it again for transporter file
/afs/nd.edu/user32/cgrabow1/muscle3.8.31_i86linux64 -in transporter_prealigned_02.fasta -out transporter_prealigned_02.fasta.align





