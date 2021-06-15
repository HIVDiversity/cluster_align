#/bin/bash

# run this script like: bash <script_name>.sh < *.fasta from inside the folder where you want the output to go.
# This lets people specify the files they wish to run into this code.


mkdir -p 0_src 1_gapless 2_clustered 3_aligned

for fn in $@
    do echo ${fn}
    cp ${fn} 0_src/.
    cp ${fn} 1_gapless/.
done

cd 1_gapless
sed -i 's/-//g' *.fasta

for gapless_fn in `ls`
    do vsearch --cluster_fast ${gapless_fn} --id 0.99 --centroids ../2_clustered/${gapless_fn/.fasta}_centroids.fasta
done

cd ../2_clustered
cat *.fasta >> ../3_aligned/combined.fasta
cd ../3_aligned
mafft combined.fasta > combined_aligned.fasta

