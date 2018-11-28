for x in "sporecoat*.fasta"
    do
    sed -e '$s/$/\n/' $x
    done > sporecoat.fasta

for y in "transporter*.fasta"
    do
    sed -e '$s/$/\n/' $y
    done > transporter.fasta

~/muscle3.8.31_i86linux64 -in sporecoat.fasta -out sporecoat.align
~/muscle3.8.31_i86linux64 -in transporter.fasta -out transporter.align