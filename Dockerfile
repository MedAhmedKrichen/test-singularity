FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-runtime

RUN apt-get update


RUN DEBIAN_FRONTEND=noninteractive apt-get install --assume-yes --no-install-recommends --quiet \
    unzip \
    git-all

RUN pip3 install --no-cache numpy \
    pytube \
    moviepy \
    crepe \
    aubio \
    pydub \
    librosa \
    opencv-python \
    pytesseract \
    fer \
    pyannote.audio \
    torch==2.2.2 \
    pytorch-lightning==2.3.0 \
    speechbrain==1.0.0 \
    
    pillow \
    accelerate \
    scikit-learn \
    torchvision \
    torchaudio \
    transformers \

    pandas \
    sentence-transformers \

    --extra-index-url https://download.pytorch.org/whl/cu116

RUN pip3 uninstall opencv-python-headless -y 

RUN pip3 install opencv-python --upgrade

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        g++ \
        make \
        automake \
        autoconf \
        bzip2 \
        unzip \
        wget \
        sox \
        libtool \
        git \
        subversion \
        python2.7 \
        zlib1g-dev \
        gfortran \
        ca-certificates \
        patch \
        ffmpeg \
	vim && \
    rm -rf /var/lib/apt/lists/*
