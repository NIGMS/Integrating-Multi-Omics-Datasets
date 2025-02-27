#!/bin/bash

conda update -n base -c defaults conda -y

# Create a conda environment
conda create -n r-package-3  r-base -y

# Consider addressing your conda initialization instead.
source ~/.bashrc

# Activate the Conda Environment
conda activate r-package-3

# Install packages
conda install bioconda::bioconductor-genomicranges -y

R -e 'remove.packages("data.table")'
conda install -c conda-forge zlib -y
conda install conda-forge::r-data.table -y
conda install bioconda::bioconductor-methylkit -y

conda install bioconda::bioconductor-genomation -y

R -e 'install.packages(c("IRkernel","ggplot2", "ggforce", "tidyverse"), repos="http://cran.rstudio.com/")'


# Install the kernel specification for Jupyter
R -e 'IRkernel::installspec(name = "R-RRBS", displayname = "R-RRBS")' 