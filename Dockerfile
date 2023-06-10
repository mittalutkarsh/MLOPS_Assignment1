FROM python:3.7.10-slim-buster

RUN pip3 install \
    torch==1.9.0+cpu \
    torchvision==0.10.0+cpu \
   # --no-cache-dir --index-url https://download.pytorch.org/whl/cpu
    -f https://download.pytorch.org/whl/cpu/torch_stable.html \
    #-f stands for trusted package
    && rm -rf /root/ .cache/pip
    # when I run the command pip is going to download the wheels file and save it in pip cache, along with being installed in the system, it is still going to keep the
    # wheels file, just do the rm -rf to the cache pip
    # Step1 - you do it without this && rm -rf /root/ .cache/pip
    # Step2 - your image size is huge , you do du -sh on all the folders
    # then you will see root folder is taking lot of space, then you will see underneath, cache and pip folder and see the size of wheel filein the pip and then you remove it 
    # By running && rm -rf /root/ .cache/pip

RUN pip3 install black