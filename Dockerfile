FROM rocker/binder:4.3

USER root

RUN install2.r --error \
    tidyverse \
    vegan \
    zCompositions \
    ggforce \
    cowplot \
    RColorBrewer

RUN R -e "install.packages('BiocManager', repos='https://cloud.r-project.org')" && \
    R -e "BiocManager::install(c('phyloseq','rhdf5'), ask=FALSE, update=FALSE)"

USER rstudio
