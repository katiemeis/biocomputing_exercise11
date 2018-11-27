#use: creates single file with newlines for two type of sequences then uses the outputs to create an alignment for each

for file in *.fasta; do sed -e '$s/$/\n/' -s sporecoat*.fasta > allspores.fasta; sed -e '$s/$/\n/' -s transporter*.fasta > alltransporters.fasta; done

/afs/nd.edu/user35/bcoggins/local/bin/muscle -in allspores.fasta -out allspores.fasta.aligned 

/afs/nd.edu/user35/bcoggins/local/bin/muscle -in alltransporters.fasta -out alltransporters.fasta.aligned
