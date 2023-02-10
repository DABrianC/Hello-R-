

#list of packages to load

#a list of packages to install
packages <- c("here", "learnr", "quarto", "rsconnect", "tidyverse", "gapminder")

# Install packages not yet installed. 
# N.B. This works for packages installed on CRAN
# It will install only those not already installed
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages])
}

# Packages loading
invisible(lapply(packages, library, character.only = TRUE))


data()
