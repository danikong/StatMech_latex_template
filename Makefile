
TEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error #-output-directory=~/build
RUB = rubber -d --unsafe
RUBBER_INSTALLED := $(shell command -v rubber 2>/dev/null)

WD := $(shell pwd)

ue:=03

# parameter below are used to rename the files for submission
vname:=Max
nname:=Mustermann
mtrnmbr:=01234567


mainname:=solution
main:=$(mainname)
bsp1:=$(main)_ex1
bsp2:=$(main)_ex2
bsp3:=$(main)_ex3
bsp4:=$(main)_ex4
bsp5:=$(main)_ex5
bsp6:=$(main)_ex6
subdir:=exercise
texdir:= $(wildcard $(subdir)/*.tex)

main_sub:=$(nname)_$(vname)_$(mtrnmbr)_ue$(ue)
bsp1_sub:=$(nname)_$(vname)_$(mtrnmbr)_ue$(ue)_1
bsp2_sub:=$(nname)_$(vname)_$(mtrnmbr)_ue$(ue)_2
bsp3_sub:=$(nname)_$(vname)_$(mtrnmbr)_ue$(ue)_3
bsp4_sub:=$(nname)_$(vname)_$(mtrnmbr)_ue$(ue)_4
bsp5_sub:=$(nname)_$(vname)_$(mtrnmbr)_ue$(ue)_5
bsp6_sub:=$(nname)_$(vname)_$(mtrnmbr)_ue$(ue)_6

main: $(main_sub).pdf clear
ifndef RUBBER_INSTALLED
	@echo "========================================="
	@echo "=       consider installing rubber      ="
	@echo "= For Debian: 'sudo apt install rubber' ="
	@echo "========================================="
endif


all: $(main_sub).pdf $(bsp1_sub).pdf $(bsp2_sub).pdf $(bsp3_sub).pdf $(bsp4_sub).pdf $(bsp5_sub).pdf $(bsp6_sub).pdf clear
ifndef RUBBER_INSTALLED
	@echo "========================================="
	@echo "=       consider installing rubber      ="
	@echo "= For Debian: 'sudo apt install rubber' ="
	@echo "========================================="
endif


$(main_sub).pdf: $(texdir) $(main).tex
ifdef RUBBER_INSTALLED
	$(RUB) $(main).tex
else
	$(TEX) $(main).tex
	#bibtex
	$(TEX) $(main).tex
	$(TEX) $(main).tex
endif
	mv $(main).pdf $(main_sub).pdf
ifndef RUBBER_INSTALLED
	@echo "=============================="
	@echo "= consider installing rubber ="
	@echo "=============================="
endif

$(bsp1_sub).pdf: $(texdir) $(bsp1).tex
ifdef RUBBER_INSTALLED
	$(RUB) $(bsp1).tex
else
	$(TEX) $(bsp1).tex
	#bibtex
	$(TEX) $(bsp1).tex
	$(TEX) $(bsp1).tex
endif
	mv $(bsp1).pdf $(bsp1_sub).pdf
ifndef RUBBER_INSTALLED
	@echo "=============================="
	@echo "= consider installing rubber ="
	@echo "=============================="
endif

$(bsp2_sub).pdf: $(texdir) $(bsp2).tex
ifdef RUBBER_INSTALLED
	$(RUB) $(bsp2).tex
else
	$(TEX) $(bsp2).tex
	#bibtex
	$(TEX) $(bsp2).tex
	$(TEX) $(bsp2).tex
endif
	mv $(bsp2).pdf $(bsp2_sub).pdf
ifndef RUBBER_INSTALLED
	@echo "=============================="
	@echo "= consider installing rubber ="
	@echo "=============================="
endif

$(bsp3_sub).pdf: $(texdir) $(bsp3).tex
ifdef RUBBER_INSTALLED
	$(RUB) $(bsp3).tex
else
	$(TEX) $(bsp3).tex
	#bibtex
	$(TEX) $(bsp3).tex
	$(TEX) $(bsp3).tex
endif
	mv $(bsp3).pdf $(bsp3_sub).pdf
ifndef RUBBER_INSTALLED
	@echo "=============================="
	@echo "= consider installing rubber ="
	@echo "=============================="
endif

$(bsp4_sub).pdf: $(texdir) $(bsp4).tex
ifdef RUBBER_INSTALLED
	$(RUB) $(bsp4).tex
else
	$(TEX) $(bsp4).tex
	#bibtex
	$(TEX) $(bsp4).tex
	$(TEX) $(bsp4).tex
endif
	mv $(bsp4).pdf $(bsp4_sub).pdf
ifndef RUBBER_INSTALLED
	@echo "=============================="
	@echo "= consider installing rubber ="
	@echo "=============================="
endif

$(bsp5_sub).pdf: $(texdir) $(bsp5).tex
ifdef RUBBER_INSTALLED
	$(RUB) $(bsp5).tex
else
	$(TEX) $(bsp5).tex
	#bibtex
	$(TEX) $(bsp5).tex
	$(TEX) $(bsp5).tex
endif
	mv $(bsp5).pdf $(bsp5_sub).pdf
ifndef RUBBER_INSTALLED
	@echo "=============================="
	@echo "= consider installing rubber ="
	@echo "=============================="
endif

$(bsp6_sub).pdf: $(texdir) $(bsp6).tex
ifdef RUBBER_INSTALLED
	$(RUB) $(bsp6).tex
else
	$(TEX) $(bsp6).tex
	#bibtex
	$(TEX) $(bsp6).tex
	$(TEX) $(bsp6).tex
endif
	mv $(bsp6).pdf $(bsp6_sub).pdf
ifndef RUBBER_INSTALLED
	@echo "=============================="
	@echo "= consider installing rubber ="
	@echo "=============================="
endif












view : main
	evince $(main_sub).pdf &

clean:
	rm -f $(nname)_$(vname)_$(mtrnmbr)*.pdf
	rm -f $(mainname)*.pdf
	rm -f *.out
	rm -f $(subdir)/*.out
	rm -f *.toc
	rm -f $(subdir)/*.toc
	rm -f *.log
	rm -f $(subdir)/*.log
	rm -f *.aux
	rm -f $(subdir)/*.aux
	rm -rf _minted-*
	rm -f *.bbl
	rm -f $(subdir)/*.bbl
	rm -f *.blg
	rm -f $(subdir)/*.blg
	rm -f *.fdb_latexmk
	rm -f $(subdir)/*.fdb_latexmk
	rm -f *.synctex.gz
	rm -f $(subdir)/*.synctex.gz
	rm -f *.fls
	rm -f $(subdir)/*.fls
	rm -rf ./build

clear:
	rm -f *.out
	rm -f $(subdir)/*.out
	rm -f *.toc
	rm -f $(subdir)/*.toc
	rm -f *.log
	rm -f $(subdir)/*.log
	rm -f *.aux
	rm -f $(subdir)/*.aux
	rm -rf _minted-*
	rm -f *.bbl
	rm -f $(subdir)/*.bbl
	rm -f *.blg
	rm -f $(subdir)/*.blg
	rm -f *.fdb_latexmk
	rm -f $(subdir)/*.fdb_latexmk
	rm -f *.synctex.gz
	rm -f $(subdir)/*.synctex.gz
	rm -f *.fls
	rm -f $(subdir)/*.fls
	rm -rf ./build


# explicitly tells MAKE that this are not files but targets within the Makefile
.PHONY: clean
.PHONY: clear
.PHONY: all
.PHONY: main
.PHONY: view
