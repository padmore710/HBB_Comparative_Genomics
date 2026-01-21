# Set CRAN mirror
options(repos = c(CRAN = "https://cloud.r-project.org"))

# Install BiocManager if not already installed
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

# Install Bioconductor packages (BiocManager will use the correct version)
bioc_packages <- c(
    "Biostrings",
    "msa",
    "ggtree"
)

BiocManager::install(bioc_packages, update = FALSE, ask = FALSE)

# Install CRAN packages
cran_packages <- c(
    "ape",
    "phangorn",
    "ggplot2",
    "tidyverse",
    "here"
)

install.packages(cran_packages, dependencies = TRUE)

# Verify installations
cat("\n=== Checking installed packages ===\n")
all_packages <- c(bioc_packages, cran_packages)
for (pkg in all_packages) {
    if (require(pkg, character.only = TRUE, quietly = TRUE)) {
        cat(sprintf("✓ %s installed successfully\n", pkg))
    } else {
        cat(sprintf("✗ %s installation failed\n", pkg))
    }
}