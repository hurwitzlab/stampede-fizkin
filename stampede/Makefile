APP = fizkin-0.0.1
EMAIL = kyclark@email.arizona.edu
SINGULARITY = /usr/local/bin/singularity
IMG_NAME = fizkin.img

clean:
	find . \( -name \*.out -o -name \*.param \) -exec rm {} \;

up: clean imgxz
	copy-from-manifest.pl6 $(WORK)/$(APP)

imgxz:
	[[ ! -e $(IMG_NAME).xz ]] && [[ -e $(IMG_NAME) ]] && xz $(IMG_NAME)

app:
	apps-addupdate -F app.json

test: clean
	sbatch test.sh

job:
	jobs-submit -F job.json

jobs-template:
	jobs-template $(APP) > job.json

jobs-submit:
	jobs-submit -F job.json

img:
	rm -f $(IMG_NAME)
	sudo $(SINGULARITY) create --size 2000 $(IMG_NAME)
	sudo $(SINGULARITY) bootstrap $(IMG_NAME) image.def

run:
	$(SINGULARITY) run $(IMG_NAME)

shell:
	sudo $(SINGULARITY) shell --writable -s /bin/bash $(IMG_NAME) 
