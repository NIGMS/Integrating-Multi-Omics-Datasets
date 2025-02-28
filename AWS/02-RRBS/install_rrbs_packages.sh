#!/bin/bash

# Create a conda environment
conda create -n r-package-2 r-base=4.2.2 -y

# Consider addressing your conda initialization instead.
source ~/.bashrc

# Activate the Conda Environment
conda activate r-package-2

# Install packages
conda install bioconda::bioconductor-methylkit -y

conda install bioconda::bioconductor-genomicranges -y

conda install bioconda::bioconductor-genomation -y

conda install conda-forge::r-ggforce -y

conda install conda-forge::r-tidyverse -y

R -e 'install.packages(c("IRkernel","ggplot2"), repos="http://cran.rstudio.com/")'

# Install the kernel specification for Jupyter
R -e 'IRkernel::installspec(name = "R-RRBS", displayname = "R-RRBS")' 