# first I ran a code scp.sh to create a file that had all of the sporecoat and transport
#files included which I ran like this while in genetic_sequences
bash ../e11stitch.sh sporecoat

#then I moved all of them with a script named scp.sh and also moved all of the proteome
#files using the same method that looked like this

bash scp.sh file

#Remove '>' using sed and then manually add the first one back in using nano
sed 's/>//g' sporecoatfinal.fasta > sporecoatfin.fasta
sed 's/>//g' transporterfinal.fasta > transporter.fasta

#Next, run muscle command to generate align file and get alignment
muscle3.8.31_i86linux64 -in sporecoatfinal.fasta -out sporecoataligned.align
muscle3.8.31_i86linux64 -in transporter.fasta -out transporteraligned.align


