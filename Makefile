JEMDOC = python3 ../jemdoc-python3/jemdoc.py
OUTDIR = ./

PAGES = jemdocs/home.jemdoc jemdocs/publications.jemdoc jemdocs/members.jemdoc jemdocs/activities.jemdoc jemdocs/awards.jemdoc jemdocs/group.jemdoc

.SUFFIXES:

%.html: jemdocs/%.jemdoc MENU
	cp MENU jemdocs/MENU
	cd jemdocs && $(JEMDOC) -o ../ $(notdir $<)

all: $(PAGES:jemdocs/%.jemdoc=%.html)

clean:
	rm -f *.html
	rm -f jemdocs/MENU
