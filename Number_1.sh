
# This code assueme that this script is in the parent directory of gene_sequences/
for file in ./gene_sequences/*spore*
do
cat $file >> Spores.fasta
echo  >> Spores.fasta
done

for file in ./gene_sequences/*porter*
do
cat $file >> Porters.fasta
echo  >> Porters.fasta
done


# this also assumes that it is in the same directory (for me ~/local/bin/) as muscle exectuable 
./muscle3.8.31_i86linux64 -in ./Spores.fasta  -out ./sporecoats.fasta
./muscle3.8.31_i86linux64 -in ./Porters.fasta -out ./transporters.fasta



