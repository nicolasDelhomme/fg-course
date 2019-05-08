#!/bin/bash

GENOME=/share/datasets/genome/lion_genome.fasta
READS_DIR=/share/datasets/reads

find $READS_DIR -name "*.fastq.gz" | sort | while read FASTQ1
do
	read FASTQ2
	PREFIX=$(basename $FASTQ1)
	PREFIX=${PREFIX%1_001.fastq.gz}
	echo "Processing $PREFIX"
	srun -c 1 --mem=2G -t 01:00:00 bwa mem $GENOME $FASTQ1 $FASTQ2 > $PREFIX.sam &
done

wait

