#!/bin/bash

DB=/public/blast/nt
FASTA=$1
PREFIX=$(basename $1)
PREFIX=${PREFIX%.fasta}

if [ ! -f $FASTA ]
then
	echo "$FASTA is not a valid file. Exiting..."
	exit 1
fi


blastn -num_threads 4 -out ${HOME}/${PREFIX}_blast.tsv -outfmt 6 -evalue 0.001 -db $DB -query $FASTA


