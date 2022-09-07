org_files := $(wildcard ./*.org)

sh_files  := $(addsuffix .sh, $(addprefix ../profile/, $(basename $(notdir $(org_files)))))

all: tangle
.PHONY : all

tangle: $(sh_files)
.PHONY : tangle

../profile/%.sh: ./%.org
	../.tools/org-babel-tangle $<
