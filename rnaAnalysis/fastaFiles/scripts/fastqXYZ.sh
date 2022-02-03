#!/bin/bash
#SBATCH --job-name=fastqConversionTest_XYZ
#SBATCH --partition=batch
#SBATCH --mail-type=ALL
#SBATCH --mail-user=map86697@uga.edu
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --mem=60gb
#SBATCH --time=160:00:00
#SBATCH --output=fastaConversionTest_XYZ.%j.out
#SBATCH --error=fastaConversionTest_XYZ.%j.err

cd $SLURM_SUBMIT_DIR

echo XYZ

ml FASTX-Toolkit/0.0.14-GCCcore-8.3.0

fastq_to_fasta -n -i XYZ.fastq -o XYZ.fasta

