FROM julia:1.7.2-bullseye

LABEL version="1.0"
LABEL location="Busan" type="Julia Hippocampus" Author="Asim Usman" email="asimsaikhu@gmail.com"
ENV TARGET_DIR /tmp
#1 COPY ./ $TARGET_DIR

RUN apt-get update
RUN apt-get install -yq curl
RUN apt-get install -yq git
RUN apt-get install -yq vim
RUN apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
RUN curl  https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh -o Anaconda3-2020.02-Linux-x86_64.sh 

WORKDIR $TARGET_DIR

<<<<<<< HEAD
RUN curl –O https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.shCopied!

# RUN apt-get install -yq software-properties-common
=======
RUN apt-get update; apt-get install -yq curl; apt-get install -yq git; apt-get -yq install vim; apt install 

# RUN apt-get install -yq software-properties-common
RUN curl https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh -o Anaconda3-2020.02-Linux-x86_64.sh


RUN apt-get install -yq software-properties-common
>>>>>>> 6616c34e45c4a459f3c79d9d03037d44ca1c0f75
RUN apt install -yq pip
RUN pip install -yq git+https://www.github.com/keras-team/keras-contrib.git


RUN git clone https://github.com/saikhu/Hipposeg.jl.git

WORKDIR $TARGET_DIR/Hipposeg.jl/

# VOLUME [ "/data" ]

CMD [ "/bin/bash" ]