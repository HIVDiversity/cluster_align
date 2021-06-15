# cluster_align
A tiny bash script to cluster .fasta files at 99% identity with vsearch --cluster_fast, and align all the centroids with mafft.

Meant to be run on a unix command line.


Requires vsearch and mafft to be available, as those names.


Use it like:
bash cluster_align.sh filename.fasta filename2.fasta 


You can specify any number of .fasta files - but they MUST HAVE ".fasta" as the last part of the filename.

I suggest adding a symlink to something like /usr/local/bin
You can do this like: ln -s <target> <link_name>
  example: ln -s /home/my_name/software/cluster_align/cluster_align.sh cluster_align
You probably have to use sudo for that.
