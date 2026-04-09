FROM rocker/binder:4.3

USER root

RUN install2.r --error \
    tidyverse \
    vegan \
    zCompositions \
    ggforce \
    cowplot \
    RColorBrewer \
    phyloseq \
    rhdf5

USER rstudio
