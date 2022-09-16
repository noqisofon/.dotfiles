org_files := $(wildcard ./*.org)

sh_files  := $(addsuffix .sh, $(addprefix ../../profile.bash/, $(basename $(notdir $(org_files)))))

all: tangle
.PHONY : all

tangle: $(sh_files)
.PHONY : tangle

../../profile.bash/%.sh: ./%.org
	../../.tools/org-babel-tangle $<
