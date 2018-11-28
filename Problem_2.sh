~/local/bin/hmmbuild transporter.hmm transporter.align

for x in *.fasta
    do
    ~/local/bin/hmmsearch --tblout "${x%.fasta}.csv" transporter.hmm $x
    done

for y in *.csv
    do
    echo "${y%.csv}.fasta"
    grep -v "#" $y|wc -l
    done > HMM_Hits.txt