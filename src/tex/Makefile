## Shell variables
MYFILE=slides

## Recipe
all : ps
	@ps2pdf ${MYFILE}.ps
	@cp ${MYFILE}.pdf ../../${MYFILE}.pdf

ps : dvi
	@dvips ${MYFILE}.dvi

dvi : ${MYFILE}.tex toc out aux
	@latex ${MYFILE}.tex

toc : ${MYFILE}.tex
	@latex ${MYFILE}.tex

out : ${MYFILE}.tex
	@latex ${MYFILE}.tex

aux : ${MYFILE}.tex
	@latex ${MYFILE}.tex

clean : 
	@rm -f *.aux *.log *.nav *.out *.pdf *.snm *.toc *.vrb *.dvi *.ps

