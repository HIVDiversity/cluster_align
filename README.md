# cluster_align
A tiny bash script to cluster .fasta files at 99% identity with vsearch --cluster_fast, and align all the centroids with mafft.

Meant to be run on a unix command line.


Requires vsearch and mafft to be available, as those names.


Use it like:
bash cluster_align.sh filename.fasta filename2.fasta 


You can specify any number of .fasta files - but they MUST HAVE ".fasta" as the last part of the filename.

I suggest adding a symlink to something like /usr/local/bin

You can do this like: ln -s <where_you_cloned_fn> <link_name>
example: ln -s /home/my_name/software/cluster_align/cluster_align.sh cluster_align
If you are creating the symlink in a directory like /usr/local/bin then you probably have to use sudo for that command.

So, lets say you have a bunch of files under: /tmp/my_dir, and you have created the symlink as above, and want to work in /tmp/demo, then you can run it like so:

cluster_align /tmp/my_dir/*.fasta
