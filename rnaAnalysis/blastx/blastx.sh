#!/bin/bash
#SBATCH --job-name=metatranscriptomicsBlastxTest
#SBATCH --partition=batch
#SBATCH --mail-type=ALL
#SBATCH --mail-user=map86697@uga.edu
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --mem=60gb
#SBATCH --time=160:00:00
#SBATCH --output=blastxTest020222.%j.out
#SBATCH --error=blastxTest020222.%j.err

cd $SLURM_SUBMIT_DIR


ml BLAST+/2.9.0-gompi-2019b

blastx -query 52610.2.393694.AGGAACCT-AGGAACCT.filter-MTF.fasta -out blastxOutputtest020222.txt -db /db/ncbiblast/refseq/03312020/refseq_protein -outfmt "6 qseqid stitle sseqid pident length mismatch gapopen evalue bitscore"
