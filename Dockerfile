FROM rocker/binder:4.5

USER root

RUN install2.r --error \
    BiocManager \
    remotes \
    tidyverse \
    vegan \
    zCompositions \
    ggforce \
    cowplot \
    RColorBrewer

RUN R -e "BiocManager::install(c('phyloseq','rhdf5'), ask=FALSE, update=FALSE)"
RUN R -e "remotes::install_version('microeco', version = '2.0.0', repos = 'https://cloud.r-project.org')"

COPY . /home/rstudio
RUN chown -R rstudio:rstudio /home/rstudio

USER rstudio
WORKDIR /home/rstudio
