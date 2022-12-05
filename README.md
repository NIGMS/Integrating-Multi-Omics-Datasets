<!-- #region -->
# University of North Dakota: Transcriptomic and Epigenetics Data Integration Module. 
---------------------------------

This module will walk you through some of the techniques to integrate transcriptomic and epigenetic data. We will use RNA-seq and Reduced-Representation Bisulfite Sequencing (RRBS) for this tutorial. The raw sequencing data is downloaded from NCBI GEO website (Accession: GSE173380) and stored into Gogle cloud buckets. Data processing is performed using nextflow pipelines to generate read counts from the raw sequencing data. Additionally, further downstream analysis is performed in vertex AI's Jupyter notebook instance with R kernel. All the results are then pushed back to Google cloud buckets for storage.

The training comprises of three modules: RNA-seq, RRBS and Integration, although the main focus will be on the integration module. The RNA-seq and RRBS modules focus on basic data preprocessing and differential analysis, while the integration module expands on some of the techniques to integrate transcriptomic and epigenetic data. If you are a beginner, we highly recommend to go through each module and also refer to other modules specific to RNA-seq and Bisulfite data analysis.  

## Overview of Page Contents

+ [Getting Started](#GS)
+ [Overview](#OV)
+ [Software Requirements](#SOF)
+ [Workflow Diagram](#WORK)
+ [Dataset](#DATA)
+ [Troubleshooting](#TR)
+ [Funding](#FUND)
+ [References](#REF)

## **Getting Started** <a name="GS"></a>

These modules were developed to be used on cloud platforms. Although these modules were made using google cloud platform, the Jupyter notebooks should work on other cloud services like Amazon AWS and Microsoft Azure. The initial steps to create a virtual machine instance may vary depending on the cloud service used. Following are some of the skills you can gain through this tutorials and some pre-requisites required to follow along these modules.   

Skills you will gain:
1. Statistics
2. Genomic Technologies
3. Data Analysis
4. Cloud Computing
5. Bioinformatics
6. Multi-omics Approach
7. Data Visualization

Prerequisites - This course requires basic knowledge of the following:
1. Basic command line operations
2. R programming
3. Basic statistics and mathematics
4. Basic understanding of different omic technologies 
5. Basic Knowledge of Cloud Computing Environment

### *Setting-up the Environment*

This repository contains three main folders representing each module. Every folder has its accompanying Jupyter notebook and data if applicable. To start with this tutorial you will need to set-up your google cloud platform, Vertex AI and Jupyter notebook instance. Please begin by first navigating to the [NIH Cloud Lab README](https://github.com/STRIDES/NIHCloudLabGCP). This will walk you through the basics of cloud platforms and provide links for setting up the environment. Once you have set-up your google cloud account, please refer to the [Ben King Lab](https://github.com/King-Laboratory/rnaseq-myco-notebook) repository to set-up a Jupyter notebook instance unser Vertex AI. Follow the steps and clone this repository using the Git dropdown menu option in Jupyter notebook. Please make sure you entered the link for the repository that you want to clone. Following is an example of this current repository when cloned in Jupyter notebook using Git.

#### *Creating a user managed notebook*

<img src="./images/Notebook-creation.png" width="1100" height="700">

#### *Cloned repository structure*

<img src="./images/Initial-screen-after-clone.png" width="1200" height="900">

### *Running the Modules*

The cloned repository has three folders for each module called RNA-seq, RRBS and Integration. All notebooks inside these modules are designed to run in R kernel. Please check that the right top of the notebook says R and not Python 3. It is highly recommended to start with RNA-seq module, followed by RRBS and finally integration. All the modules comprises of one RNA-seq.ipynb Jupyter notebook and all the accompanying files required for the analysis.

The initial cells of the notebook for RNA-seq and RRBS module contains the data pre-processing commands, which is done through nextflow. If the nextflow is installed correctly, the Jupyter notebook should be able to launch the nextflow and perform all the pre-processing with just running the cell and without requiring any further user input. If the command output of nextflow is not displayed concisely, you can copy the command inside the quotes ("~/nextflow run ....") to a terminal window. Please make sure your path in the command is correct. Notebook cells with nextflow commands will take longer to execute as they are performing multiple computationally heavy tasks. RNA-seq and Bisulfite sequencing have their own dedicated tutorials where the analysis is explained in more detail. It is recommended to refer to those tutorials first as the main focus of this tutorial is on integration of transcriptomic and epigenetic data. 

For RNA-seq and Bisultfite sequencing data, further pre-processing and normalization is performed using R packages. The list of all the packages and versions is provides below under software requirement. Differential analysis, enrichment analysis, and visualization is performed consequently in the same notebook. Further explanation of the code is provided in the markdown cells of the notebook. Integration module uses the processed data and results from RNA-seq and Bisulfite sequencing modules to further incorporate the datasets and provide better understanding of the experiment. 

Now, you can explore the tutorial and run code blocks from each Jupyter notebook from top to bottom. If you are new to Jupyter notebooks, please follow the documentation or look for tutorials online. 

## **Overview** <a name="OV"></a>

Although the main focus of this tutorial is the integration of transcriptomic and epigenetic data, it also teaches you how to run a standard RNA-seq and Bisulfite sequencing workflows in the cloud. It is recommended to run the modules in the following order.

**Module 1: RNA-sequencing (Transcriptomic)**, often referred to as RNA-seq, is a sequencing technique that uses next-generation sequencing to find the identity and quantity of RNA from a biological sample. The identification of RNA within a sample gives insight into transcribed genes. At the basic level, RNA-sequences are generated first through isolating RNAs from the biological sample, generating complementary DNA library, and sequencing and alignment of the reads. The generated reads then go through downstream analysis to reveal insights into the transcriptome such as gene expression levels. RNA-seq has a few advantages over microarrays, another technique that provides information about gene expression. One advantage is the size of the biological sample needed. Microarrays need a microgram quantity of biological sample whereas RNA-seq only requires a biological sample on the nanogram level. Further, RNA-seq can provide a greater magnitude of gene expression information compared to microarray.

**Module 2: Bisulfite Sequencing (Epigenetic)** is a very well-established protocol used to analyze methylated cytosines in a genomic DNA. Bisulfite sequencing is primarily used to detect the DNA methylation patterns and it offers a quantitative and efficient approach to identify the 5-methylcytosine at a single base pair resolution. The main procedure to analyze the DNA methylation status is by comparing the sequencing results and the original DNA sequence. 5-methylcytosine (5mC) is present in the genome when a C-peak is present because all unmethylated cytosines (C) transform to thymine (T). If both the C- and T-peaks are present, partial methylation or possibly insufficient bisulfite conversion has occurred. After the bisulfite conversion, the next step is to perform PCR amplification before interpretation of the sequencing data. 

**Module 3: Integration of RNA-seq and Reduced-Representation Bisulfite Sequencing Data** is illustrated in the integration module. Four techniques namely correlation test, overlaps and enrichment colocalization, functional and pathway relations, and motifs search are used to interpret both the data sets collectively. Normalized expression, Differential expression, per-base methylation levels, differentially methylated positions and differentially methylated regions from both RNA-seq and Bisultfite sequencing modules is used as the input data for the integration analysis. The final results are explored in Jupyter notebook itself and then stored in cloud storage. The integration workflow is also explained in the following figure. 

<img src="./images/integration.png" width="1250" height="900">


## **Software Requirements** <a name="SOF"></a>

The R session and package information at the time of tutorial development can be found below:
+ [R session Information](./docs/sessionInfo.txt)
+ [R Installed Package Versions](./docs/packages_version.csv)
+ [Conda Environment](./docs/conda_environment.yml)

## **Workflow Diagrams** <a name="WORK"></a>

<img src="./images/architecture.png" width="1250" height="900"> 

As seen in the above figure, we have downloaded the data from the NCBI GEO website with accession number GSE173380. Sample data is already provided in the tutorial repository. There is no need to download the data again unless you want to run the nextflow pre-processing step on the entire dataset (which could be computationally expensive). In the second step, nextflow in collaboration with google lifescience API and Vertex AI is used to perform the preprocessing. Nextflow works as a workflow manager which enables scalable and reproducible scientific workflows using containers. Google life science API is a suite of tools and services for managing, processing and transforming life science data where it creates and manages the clusters and virtual machines. It helps to split the job into multiple jobs and assigns each job to a set of designated virtual machines. Vertex AI on the other hand behaves like an interface to manage and execute the process. 

After initial pre-processing using nextflow, further preprocessing, normalization, clustering analysis, differential analysis and visualization is done in Vertex AI's Jupyter notebook using the R kernel. The results are written in the current working directory inside vertex AI instance and also transferred to cloud buckets for storage. In the fouth step, we will extract the data from step two and three to use for multi-omics module's integration analysis. The integrative analysis is also performed using vertex AI's Jupyter notebook using the R kermel. We will use multi-omics integrative techniques like correlation test, overlaps and enrichment colocalization, functional and pathway relation, and motifs search. The results from these techniques will be explored in the notebook and then tranfered to cloud storage for future reference.   

## **Dataset** <a name="DATA"></a>

The dataset for this tutorial is extracted from GEO website accession number GSE173380 [1]. This dataset is publically avaiable at GEO website. For initial pre-processing using nextflow, only a sample of this data is used to speed up the processing and reduce heavy computation. For sampling, only two files/runs are used for both rna-seq and bisulfite sequencing, which are pulled from cloud storage buckets. After demonstrating the initial pre-processing steps with a sample dataset, we use the gene expression and methylation files available under the same accession from supplementary file section. These files are provided in the repository and are then used for further downstream analysis. 

## **Troubleshooting** <a name="TR"></a>

+ If you are having issues with attaching a google cloud bucket to Jupyter notebook, it is recommended to use the user-managed notebooks and not google managed notebooks while creating a new instance under Vertex AI.

+ Hexbin package needs to be installed on top of ggplot to create meanSDPlot in RNA-seq downstream analysis workflow.

+ Make sure you do not use underscore (_) while naming the storage buckets. Nextflow pipelines may not work if you use underscore due to DNS compatibility issues. 

+ If you make any changes to folder permissions and it still does not work, please try to restart the kernel. 

+ If the nextflow command output display is distorted inside Jupyter notebook, try to run the same command in terminal or Python kernel. Please make sure to change the command syntax if you plan to use Python kernel for nextflow. The command inside quotes ("~/nextflow run ....") remains the same but the rest of the syntax may change depending on if you are using terminal or python kernel. 

+ If any package does not install, please try the following steps:
    + Open terminal using New launcher (+ button in blue on the top left corner under File and Edit dropdown)
    + Open R with admin rights using command > sudo R
    + Install clusterProfiler > BiocManager::install("package-name")

## **Funding** <a name="FUND"></a>

National Institute Of General Medical Sciences of the National Institutes of Health under Award Number P20GM103442

## **References** <a name="REF"></a>

[1]. Chen Z, Wang C, Blood A, Bragg S et al. Renal functional, transcriptome, and methylome adaptations in pregnant Sprague Dawley and Brown Norway rats. PLoS One 2022;17(6):e0269792. PMID: 35709218 - [Dataset: GSE173380]

[2]. Singhal SK, Usmani N, Michiels S, Metzger-Filho O, Saini KS, Kovalchuk O, Parliament M. Towards understanding the breast cancer epigenome: a comparison of genome-wide DNA methylation and gene expression data. Oncotarget. 2016 Jan 19;7(3):3002-17. doi: 10.18632/oncotarget.6503. PMID: 26657508; PMCID: PMC4823086.

## **License for Data** <a name="LIC"></a>

Text and materials are licensed under a Creative Commons CC-BY-NC-SA license. The license allows you to copy, remix and redistribute any of our publicly available materials, under the condition that you attribute the work (details in the license) and do not make profits from it. More information is available [here](https://tilburgsciencehub.com/about/#license).

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />

This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.

<!-- #endregion -->

```python

```
