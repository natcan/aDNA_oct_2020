#!/bin/bash

# Job name:mapping
#SBATCH --job-name=bam_pip
#
# Project:NN9623K
#SBATCH --account=NN9623K
#
# Wall time limit:
#SBATCH --time=04-04:00:00
#SBATCH --partition=bigmem
#SBATCH --ntasks=2
#SBATCH --mem-per-cpu=100G


## Set up job environment:
set -o errexit  # Exit the script on any error
set -o nounset  # Treat any unset variables as an error

export MODULEPATH=/cluster/work/support/easybuild/modules/all:$MODULEPATH

module --quiet purge  # Reset the modules to the system default

module purge
module load Java/1.8.0_212
module load R/3.5.1-foss-2018b
module swap Python/3.6.6-foss-2018b Python/2.7.15-foss-2018b
module load PALEOMIX/1.2.14-foss-2018b-Python-2.7.15
module load HTSlib/1.9-foss-2018b
module load AdapterRemoval/2.3.1-foss-2018b
module load SAMtools/1.9-foss-2018b
module load mapDamage/2.0.9-foss-2018b-Python-2.7.15
module load BWA/0.7.17-foss-2018b

module list

paleomix bam_pipeline run --jre-option -Xmx200g --jar-root=/cluster/home/natcan/install/  ccalisaya_test.yaml
