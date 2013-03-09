
nbo.obo:
	blip-findall -r nbo -query "class(ID),id_idspace(ID,'NBO')" -to obo > $@

nbo-simple.owl: nbo.obo
	owltools $< --remove-dangling -o -f functional file:///`pwd`/$@
