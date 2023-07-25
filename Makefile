PYSCRIPT = generate-tex.py
REQUIREMENT = requirements.txt
VENV = venv
FILEDIR = files
TEXDIR = tex
PROJ = eclab-beamer
TEX = $(TEXDIR)/$(PROJ).tex
PDF = $(TEXDIR)/$(PROJ).pdf
RM = rm -rf

all: $(PDF)

$(VENV):
	virtualenv $@

setup: $(REQUIREMENT) $(VENV)
	. $(VENV)/bin/activate; pip install -r $<

$(TEX): $(PYSCRIPT) $(FILES)
	. $(VENV)/bin/activate; python $< > $@

$(PDF): $(TEX)
	cd $(<D) && make

test: $(PDF)
	evince $(PDF)

clean-misc:
	cd $(TEXDIR) && make clean-misc

clean-venv:
	$(RM) $(VENV)

clean:
	cd $(TEXDIR) && make clean
	$(RM) $(TEX)

.PHONY: all setup test clean-misc clean
