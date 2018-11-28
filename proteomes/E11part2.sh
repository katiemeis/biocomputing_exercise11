#Build HMM profile for transporter genes using transporterfinal.align
hmmbuild transporterfinal.hmm transporteraligned.align

#Search in HMM for each species
hmmsearch --tblout transArthro.hits transporterfinal.hmm Arthrobacter.fasta
cat transArthro.hits | grep -v "#" | wc -l > transhits.txt

hmmsearch --tblout transBac.hits transporterfinal.hmm Bacillus.fasta
cat transBac.hits | grep -v "#" | wc -l >> transhits.txt

hmmsearch --tblout transClos.hits transporterfinal.hmm Clostridium.fasta
cat transClos.hits | grep -v "#" | wc -l >> transhits.txt

hmmsearch --tblout transFlav.hits transporterfinal.hmm Flavobacterium.fasta
cat transFlav.hits | grep -v "#" | wc -l >> transhits.txt

hmmsearch --tblout transLimno.hits transporterfinal.hmm Limnohabitans.fasta
cat transLimno.hits | grep -v "#" | wc -l >> transhits.txt

hmmsearch --tblout transRoseo.hits transporterfinal.hmm Roseobacter.fasta
cat transRoseo.hits | grep -v "#" | wc -l > transhits.txt

hmmsearch --tblout transRhizo.hits transporterfinal.hmm Rhizobium.fasta
cat transRhizo.hits | grep -v "#" | wc -l >> transhits.txt

hmmsearch --tblout transVer.hits transporterfinal.hmm Verrucomicrobia.fasta
cat transVer.hits | grep -v "#" | wc -l >> transhits.txt

#then i did this to see the output

cat transhits.txt 
0
1
0
0
0
0
0

