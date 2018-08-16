# A Makefile for generating the PDFs from the R Markdown files.
#
# * Type "make slides" in this directory to generate a PDF of the
#   slides from the R Markdown source.
#
# * Type "make test" to generate a PDF of the slides that also runs
#   a lot of the R code.
#
# * Optionally, type "make handout" to generate a PDF document that
#   can be used as a handout to distribute to workshop
#   participants. For improved layout, I recommend setting the YAML
#   header in slides.Rmd to
# 
#     ---
#     title: "Introduction to R for data analysis"
#     author: Peter Carbonetto
#     header-includes:
#       - \usepackage{newcent}
#     ---
#
# * Type "make clean" to discard the generated PDFs, and all accompanying
#   output.
#

# RULES
# -----
all: slides

slides: slides.pdf

test: slides_test.pdf

handout: handout.pdf

# Create the slides.
slides.pdf : analysis/slides.Rmd
	Rscript -e 'knitr::opts_chunk$$set(eval = FALSE); \
rmarkdown::render("analysis/slides.Rmd")'
	rm -f analysis/slides.tex
	mv -f analysis/slides.pdf .

# Generate the slides while also testing the R code.
slides_test.pdf : analysis/slides.Rmd
	Rscript -e 'knitr::opts_chunk$$set(eval = TRUE); \
rmarkdown::render("slides.Rmd",output_file = "slides_test.pdf")'
	mv -f analysis/slides_test.pdf .

# Create the handout.
handout.pdf : analysis/slides.Rmd
	Rscript -e 'knitr::opts_chunk$$set(eval = FALSE); \
rmarkdown::render("analysis/slides.Rmd",output_format = "pdf_document", \
output_file = "handout.pdf")'
	rm -f analysis/handout.tex
	mv -f analysis/handout.pdf .

clean:
	rm -f slides.pdf slides_test.pdf handout.pdf


