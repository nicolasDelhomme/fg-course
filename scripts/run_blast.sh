#!/bin/bash
#SBATCH -c 4
#SBATCH --mem=15G

DB=/public/ncbi_nt2019/nt
FASTA=$1
PREFIX=$(basename $1)
PREFIX=${PREFIX%.fasta}

if [ ! -f $FASTA ]
then
	echo "$FASTA is not a valid file. Exiting..."
	exit 1
fi


blastn -num_threads $SLURM_CPUS_PER_TASK -out ${PREFIX}_blast.tsv -outfmt 6 -evalue 0.1 -db $DB -query $FASTA


