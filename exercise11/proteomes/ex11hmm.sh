/afs/nd.edu/user35/bcoggins/local/bin/hmmbuild alltrans.hmm alltransporters.fasta.aligned
for file in *.fasta; do sed -e '$s/$/\n/' -s *.fasta > allproteoms.fasta;
/afs/nd.edu/user35/bcoggins/local/bin/hmmsearch --tblout allproteomhits.txt alltrans.hmm allproteoms.fasta
