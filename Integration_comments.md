# Comments and recommendations for functional-release-final version
Congratulations on getting your functional module assembled! The next step in the development process is to integrate the module into NIH Cloud Lab. To accomplish that, we will be providing feedback and recommendations on certain aspects of the module in order to get it ready to go live on Cloud Lab. Below are some comments we believe will make the module stronger. Feel free to reach out with any questions to oconnellka@nih.gov.

### Best practices
+ Name each submodule with a 1, 2, or 3 to make more clear what order users should go. 
+ Be aware of proper names, for example capitalize Vertex AI or Google Cloud Platform. 
+ Please move the data to a Bucket, just so that students will have practice copying in data using gsutil. 
+ Since users are going to be running these notebooks for the first time, it makes more sense to not comment out the install instructions, that way they can set up the environmnent without having to uncomment those lines. 

### Knowledge checks
+ Submodule 1, flashcards, you should give some background somewhere on what is the 5' or 3' end. A new user may not have this knowledge before doing the module. Same goes for mRNA. 

### Graphics
Graphics are clear, just want to confirm that figures can be reproduced without modification. Consider using BioRender for some figures.

### README file
+ In Getting Started, please point to the Cloud lab docs at https://github.com/STRIDES/NIHCloudLabGCP/blob/main/docs/vertexai.md rather than the Ben King lab, his module will be in the same github repo as yours so we want to point everything instead to cloud lab. 
+ Your GitHub url will be https://github.com/NIGMS/MultiomicsUND, please mention that for the git clone instructions in the README.  
+ If someone is new to Jupyter Notebooks, you can send them to this link https://github.com/STRIDES/NIHCloudLabGCP#JUP.
+ Capitalize Nextflow, Google, Vertex AI or Google Cloud Platform etc. 
+ Is there a particular machine size you recommend? Such as 8 CPUs and 32 GB RAM etc. 
+ If you are using gls profile for nextflow are you using the Life Sciences API? If so, you need to explain that or else point people to the documentation. Or to our Cloud Lab docs about LS API  https://github.com/STRIDES/NIHCloudLabGCP/tree/main/tutorials#LSAPI. 
+ Why is nextflow command commented out each time? Its not super clear when to use NF and when to run all the way through step by step. Or why you would do one or the other.

+ add link to intro paragraphs to mdi, hawaii tutorials for rnaseq and methylseq
+ add sentence for where nigms repository is in the setting up environment section


### 508-compliant videos
NA, no videos yet included. 

+ make introductory video covering what students should expect to learn and order of submodules

### Technical implementation design documents
TID diagram is present and legible in the README

### File naming conventions
Files are consistently named with logical conventions throughout

### Module readability and flow
I had an install error for Integration with “installation of package ‘TFBSTools’ had non-zero exit status”

+ erase git history, causing 6 GB cache when cloning repo
+ use color blocks instead of html color changes for headings


+ Uncomment install instructions since users will be going through for first time in new environment.
+ Integration submodule references should occur after the first mention.
+ Submodule 1, flashcards, you should give some background somewhere on what is the 5' or 3' end. A new user may not have this knowledge before doing the module. Same goes for mRNA. 
+ In Getting Started, please point to the Cloud lab docs at https://github.com/STRIDES/NIHCloudLabGCP/blob/main/docs/vertexai.md rather than the Ben King lab, his module will be in the same github repo as yours so we want to point everything instead to cloud lab. Your GitHub url will be https://github.com/NIGMS/MultiomicsUND, please mention that for the git clone instructions in the README.  If someone is new to Jupyter Notebooks, you can send them to this link https://github.com/STRIDES/NIHCloudLabGCP#JUP. Capitalize Nextflow, Google etc. Is there a particular machine size you recommend? Such as 8 CPUs and 32 GB RAM etc. If you are using gls profile for nextflow are you using the Life Sciences API? If so, you need to explain that or else point people to the documentation. Or to our Cloud Lab docs about LS API  https://github.com/STRIDES/NIHCloudLabGCP/tree/main/tutorials#LSAPI. 

+ Install error with R package needs to be corrected with additional mitigation steps documented 

+ Tutorial 1 rna seq, nextflow command results in trace error in config file doesn't seem to be in the repo and nextflow install step not included. 
+ make all lib paths writeable
+ create session.Rda for each tutorial - making loading easier - optional 

### Directory structure and organization
As noted above, please make the submodule order more clear with a 1,2,3

+ Data is stored local and needs to be pulled from a bucket with bucket creation step for all tutorials
+ Where are the datasets from in the Integration module, are they preloaded examples from an R package? Could we use real data here instead? 

### Paths and links
Where are the datasets from in the Integration module, are they preloaded examples from an R package? Could we use real data here instead? 

### Scientific completeness
+ You could consider having a submodule where they download the source data, just to show how to access GEO or SRA data.
+ In RNAseq module you could add some more info in the central dogma section about DNA is transcribed to RNA which is translated to proteins. In RRBS notebook a user may get lost if they don't first know what transcription is. 
+ In RNAseq submod, consider a better transition between central dogma and RNAseq protocol. Why do we want to do RNAseq? Why are you focusing on RNAseq instead of one of the other omics disciplines? 
+ Why in RNAseq is the heatmap written to a PDF instead of just printed to screen? 