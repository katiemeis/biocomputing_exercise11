#for loop to concatenate sporecoat files
for file in $@ 
do
#adds new line character to separate the files 
echo ' ' >> $file
#outputs and concatenates all sporecoat files into single sporecoat sequence file 
cat $file  >> sporecoat_all.fasta
done
