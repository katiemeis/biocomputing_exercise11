###Usage: bash Question1_2.sh 
###Create sequence alignments from sporecoat and transporter files

#Use muscle to align sporecoat sequences
/afs/nd.edu/user17/saraki/local/bin/muscle3.8.31_i86linux64 -in sporecoat_combined.fasta -out sporecoat_aligned.fasta

#Use muscle to align transporter sequences
/afs/nd.edu/user17/saraki/local/bin/muscle3.8.31_i86linux64 -in transporter_combined.fasta -out transporter_aligned.fasta
