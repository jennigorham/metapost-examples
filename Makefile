MPFILES = $(filter-out common.mp mptextmp.mp, $(wildcard *.mp))
PDFFILES := $(addsuffix -1.pdf, $(basename $(MPFILES)))

%-1.pdf: %.mp common.mp
	MPTEXPRE=''; mptopdf $<

all: $(PDFFILES)

clean:
	rm *.log mptextmp.* mpxerr.tex
