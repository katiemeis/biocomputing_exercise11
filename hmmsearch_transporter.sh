for i in $file
do
hmmsearch -tblout transporter_all.hmm 
cat transporter_all. | grep -v "#" | wc less -S >> $file.hits 
done 
