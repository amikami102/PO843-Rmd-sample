# PO843 Rmarkdown Sample

## Overview
This repository contains material for PO843 *Maximum Likelihood Estimation*'s Rmarkdown tutorial session. The goal of the tutorial is to show how to apply features of Rmarkdown and `knitr` to create reproducible manuscripts. The "sample-ta" document (available in both ".html" and ".pdf") demonstrates 

- how to format the YAML to insert
    - the current date,
    - the abstract,
    - LaTeX packages
    - parameters to be used in `rmarkdown::render()`; 
- how to use `knitr` chunk options globally and locally;
- how to create tables for R output with `stargazer()` and `xtable()`;
- how to insert a bibliography using external ".bib" file;
- how to insert inline citation and footnotes;
- how to create cross references.  

### Drawing with TikZ
Additionally, there is a .tex file in the "script" folder that produces a directed-acyclic graph using TikZ. The output "dag.pdf" is saved in "fig" folder. 

### Makefile
Finally, this repository contains a "Makefile" that automatically creates ".html" and ".pdf" out of "sample-ta.Rmd" and "fig/dag.pdf" from "script/dag.tex". According to Karl Broman's ["Minimal Make"](http://kbroman.org/minimal_make/), [*GNU Make*](https://www.gnu.org/software/make/) is the most important tool for a reproducible research. As our "sample-ta.Rmd" creates both ".html" and ".pdf" documents and contains `knitr` chunks whose functions depend on some parameters, a makefile automating file compilation is appropriate. 


## Repository organization
```
|-- README.md                                   <- what you're reading right now
|-- data
|       |-- bank-additional
|               |-- bank-additional-full.csv
|               |-- bank-additional.csv
|               |-- bank-additional-names.txt
|-- fig                                         <- figures saved to .png, .pdf
|-- script                                      <- .R and .tex files
|       |-- bank-marketing.R                    
|       |-- dag.tex
|-- tab                                         <- tables saved to .txt  
|-- sample-ta.Rmd                                
|-- sample.bib                                   
|-- Rmd_sample.Rproj                            <- .Rproj that will set the working directory
|-- Makefile                                    
```
