SRC = $(wildcard *.Rmd)

HTML = $(SRC:.Rmd=.html)
PDF = $(SRC:.Rmd=.pdf)

all : $(HTML) $(PDF)
	echo All files are now up to date
clean :
	rm -f $(HTML) $(PDF) *.aux *.log 

%.html : %.Rmd
	Rscript -e 'rmarkdown::render("$<", \
	output_format = "html_document", \
	params = list(input_type = "html"))'

%.pdf : %.Rmd
	Rscript -e 'rmarkdown::render("$<", \
	output_format = "pdf_document", \
	params = list(input_type = "latex"))'

# Specifying the output directory to "fig" for 
# "script/dag.tex" 
fig/dag.pdf : script/dag.tex
	pdflatex -output-directory=fig $<	