FROM nvcr.io/nvidia/pytorch:19.04-py3
LABEL maintainer="wang-junjian@qq.com"

# sh git_clone.sh

# Install the COCO API
RUN git clone https://github.com/cocodataset/cocoapi.git /cocoapi && \
    cd /cocoapi/PythonAPI && \
    make install


# Install the Detectron
RUN git clone https://github.com/facebookresearch/detectron.git /detectron && \
    pip install -r /detectron/requirements.txt && \
    cd /detectron && make
