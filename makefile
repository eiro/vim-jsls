DICT=$(wildcard dict/* )
tags: $(DICT) ; perl scripts/maketags.pl $(DICT) > $@
