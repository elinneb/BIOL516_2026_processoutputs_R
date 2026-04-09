options(repos = c(CRAN = "https://cloud.r-project.org"))

install.packages(c(
  "ggvegan",
  "pairwiseAdonis",
  "microeco",
  "file2meco"
))

if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes")
}

remotes::install_github("cafferychen777/ggpicrust2")
