ARG PYTORCH="1.6.0"
ARG CUDA="10.1"
ARG CUDNN="7"

FROM pytorch/pytorch:${PYTORCH}-cuda${CUDA}-cudnn${CUDNN}-devel

RUN apt-get update && apt-get install -y curl ffmpeg libsm6 libxext6 git ninja-build libglib2.0-0 libsm6 libxrender-dev libxext6 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
    
# Install MMCV
RUN pip install mmcv-full==1.3.16 -f https://download.openmmlab.com/mmcv/dist/cu101/torch1.8.1/index.html

# Install MMClassification
RUN conda clean --all
RUN git clone https://github.com/open-mmlab/mmclassification.git
WORKDIR ./mmclassification
RUN pip install --no-cache-dir -e .

WORKDIR /workspace
COPY requirements.txt .
RUN pip install -r requirements.txt
