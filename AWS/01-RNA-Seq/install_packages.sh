#!/bin/bash

conda update -n base -c defaults conda -y

# Create a conda environment
conda create -n r-package -y

# Consider addressing your conda initialization instead.
source ~/.bashrc

# Activate the Conda Environment
conda activate r-package

# Install packages
conda install -c conda-forge -c bioconda bioconductor-deseq2 -y

conda install r-hexbin -y

conda install conda-forge::r-tidyverse -y

conda install bioconda::bioconductor-bsgenome -y

conda install bioconda::bioconductor-vsn -y 

conda install bioconda::bioconductor-genomation -y

conda install bioconda::bioconductor-genomeinfodb -y

R -e 'install.packages(c("NMF","IRkernel"), repos="http://cran.rstudio.com/")'


# Install the kernel specification for Jupyter
R -e 'IRkernel::installspec(name = "R-Custom-Kernel", displayname = "R-Custom-Kernel")' 