FROM rocker/binder:4.3

USER root

RUN install2.r --error \
    BiocManager \
    tidyverse \
    vegan \
    zCompositions \
    ggforce \
    cowplot \
    RColorBrewer

RUN R -e "BiocManager::install(c('phyloseq','rhdf5'), ask=FALSE, update=FALSE)"

# copy your repo contents into the RStudio user's home
COPY . /home/rstudio
RUN chown -R rstudio:rstudio /home/rstudio

USER rstudio
WORKDIR /home/rstudio
