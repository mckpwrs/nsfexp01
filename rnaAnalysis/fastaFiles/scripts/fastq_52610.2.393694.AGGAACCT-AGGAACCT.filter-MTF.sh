#!/bin/bash
#SBATCH --job-name=fastqConversionTest_52610.2.393694.AGGAACCT-AGGAACCT.filter-MTF
#SBATCH --partition=batch
#SBATCH --mail-type=ALL
#SBATCH --mail-user=map86697@uga.edu
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --mem=60gb
#SBATCH --time=160:00:00
#SBATCH --output=fastaConversionTest_52610.2.393694.AGGAACCT-AGGAACCT.filter-MTF.%j.out
#SBATCH --error=fastaConversionTest_52610.2.393694.AGGAACCT-AGGAACCT.filter-MTF.%j.err

cd $SLURM_SUBMIT_DIR

echo 52610.2.393694.AGGAACCT-AGGAACCT.filter-MTF

ml FASTX-Toolkit/0.0.14-GCCcore-8.3.0

fastq_to_fasta -n -i 52610.2.393694.AGGAACCT-AGGAACCT.filter-MTF.fastq -o 52610.2.393694.AGGAACCT-AGGAACCT.filter-MTF.fasta

