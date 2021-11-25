FROM qiangzibro/mmlab-fundamental:torch18-cu102-cudnn7

# Install MMClassification
RUN conda clean --all
RUN git clone https://github.com/open-mmlab/mmclassification.git
WORKDIR ./mmclassification
RUN pip install --no-cache-dir -e .

WORKDIR /workspace
COPY requirements.txt .
RUN pip install -r requirements.txt
