## PO843 Rmarkdown Sample
This repository contains material for PO843 *Maximum Likelihood Estimation*'s Rmarkdown tutorial session. The goal of the tutorial is to show how to apply features of Rmarkdown and `knitr` to create reproducible manuscripts. The sample document (in ".html" and ".pdf" output) demonstrates 

- how to format the YAML to include
    - the current date,
    - the abstract,
    - \LaTeX packages
    - parameters to be used in `rmarkdown::render()`; 
- how to use `knitr` chunk options such as `echo`, `fig.path`, `dev`, `fig.align`;
- how to create tables for R output with `stargazer()` and `xtable()`;
- how to insert a bibliography using external ".bib" file;
- how to insert inline citation and footnotes;
- how to insert cross references.  

Finally, this repository contains a "makefile" that automatically creates ".html" and ".pdf" out of "sample-ta.Rmd". According to Karl Broman, this is the most important tool to creating manuscripts for reproducible research, but it tends to be ignored. As "sample-ta.Rmd" creates both ".html" and ".pdf" documents and contains chunks whose functions depend on some parameters, a makefile automating file compilation is appropriate. 

## Repository organization
```
|-- README.md                                   <- what you're reading right now
|-- data
|       |-- bank-additional
|               |-- bank-additional-full.csv
|               |-- bank-additional.csv
|               |-- bank-additional-names.txt
|-- fig                                         <- plots saved to .png
|-- script                                      <- .R script files
|       |-- bank-marketing.R
|-- tab                                         <- tables saved to .txt  
|-- sample-ta.Rmd                                
|-- sample.bib                                   
|-- Rmd_sample.Rproj                            <- .Rproj that will set the working directory
|-- Makefile                                    
```
