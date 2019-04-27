#!/usr/bin/bash
#
# R environment setup
#

# install renv
Rscript -e "install.packages('pak')"
Rscript -e "pak::pkg_install('renv', ask = FALSE)"

# initialize new package-specific environment / private library;
# pak must be reinstalled in the new environment in order to be used
Rscript -e "renv::init()"
Rscript -e "install.packages('pak')"
Rscript -e "pak::pkg_install(c('rmarkdown', 'tidyverse', 'yaml'), ask = FALSE)"
Rscript -e "renv::snapshot(confirm = FALSE)"

# initialze git repo
git init
git add .
git commit -am 'Initial commit'
