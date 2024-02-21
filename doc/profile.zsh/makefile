org_files := $(wildcard ./*.org)

zsh_files  := $(addsuffix .sh, $(addprefix ../../profile.zsh/, $(basename $(notdir $(org_files)))))

all: tangle
.PHONY : all

tangle: $(zsh_files)
.PHONY : tangle

../../profile.zsh/%.zsh: ./%.org
	../../.tools/org-babel-tangle $<
