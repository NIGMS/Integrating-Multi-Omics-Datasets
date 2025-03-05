#!/bin/bash

# Create a conda environment
conda create -n r-package-3 r-base=4.3.3 -y

# Consider addressing your conda initialization instead
source ~/.bashrc

# Activate the Conda Environment
conda activate r-package-3

# Install packages

conda install conda-forge::r-pvclust -y

conda install conda-forge::r-ggnewscale -y 

conda install conda-forge::r-ggridges -y

conda install conda-forge::r-europepmc -y

conda install conda-forge::r-ggseqlogo -y

conda install bioconda::bioconductor-methreg -y

conda install bioconda::bioconductor-bsgenome -y

conda install bioconda::bioconductor-clusterprofiler -y

conda install bioconda::bioconductor-pathview -y

conda install bioconda::bioconductor-enrichplot -y

conda install bioconda::bioconductor-repitools -y

conda install bioconda::bioconductor-rnaagecalc -y 

conda install bioconda::bioconductor-motifmatchr -y

conda install bioconda::bioconductor-tfbstools -y 

conda install conda-forge::r-doparallel -y

conda install bioconda::bioconductor-bsgenome.hsapiens.ucsc.hg38 -y

conda install -c conda-forge r-data.table=1.16.4 -y
conda install bioconda::bioconductor-methylkit -y

conda install bioconda::bioconductor-genomation -y

conda install bioconda::bioconductor-deseq2 -y

conda install conda-forge::r-tidyverse -y

conda install bioconda::bioconductor-motifstack -y



R -e 'install.packages(c("IRkernel"), repos="http://cran.rstudio.com/")'

# Install the kernel specification for Jupyter
R -e 'IRkernel::installspec(name = "R-Intergration", displayname = "R-Intergration")' 