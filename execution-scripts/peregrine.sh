#!/bin/bash
#SBATCH --job-name=run_arcan_analysis
#SBATCH --mail-type=ALL
#SBATCH --time=1-12:00
#SBATCH --mail-user=r.j.scheedler@student.rug.nl
#SBATCH --output=job-%j.log
#SBATCH --partition=regular
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=64000

module load Java/11.0.2
module load git/2.13.2-foss-2016a

srun ./clone-project-run-arcan.sh