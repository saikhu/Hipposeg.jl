FROM julia:1.7.2-bullseye

LABEL version="1.0"
LABEL location="Busan" type="Julia Hippocampus" Author="Asim Usman" email="asimsaikhu@gmail.com"
ENV TARGET_DIR /workspace
#1 COPY ./ $TARGET_DIR

WORKDIR $TARGET_DIR

RUN apt-get update; apt-get install -yq curl; apt-get install -yq git; apt-get -yq install vim; apt install 
# RUN apt-get install -yq software-properties-common
RUN curl https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh -o Anaconda3-2020.02-Linux-x86_64.sh


RUN git clone https://github.com/saikhu/Hipposeg.jl.git

WORKDIR $TARGET_DIR/Hipposeg.jl/

# VOLUME [ "/data" ]

CMD [ "/bin/bash" ]