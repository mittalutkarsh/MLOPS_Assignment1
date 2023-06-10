FROM python:3.7.10-slim-buster

RUN pip3 install \
    torch==1.9.0+cpu \
    torchvision==0.10.0+cpu \
   # --no-cache-dir --index-url https://download.pytorch.org/whl/cpu
    -f https://download.pytorch.org/whl/cpu/torch_stable.html \
    #-f stands for trusted package
    && rm -rf /root/ .cache/pip

RUN pip3 install black