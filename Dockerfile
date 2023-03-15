# Version worked on local machine - commands worked! Nodified to VM

FROM python:3.10

WORKDIR /app

COPY CLEAN /app/

# This has been changed - removed lib versions
RUN pip install --no-cache-dir --upgrade -r requirements.txt

RUN pip install torch -f https://download.pytorch.org/whl/cu111/torch_stable.html

# 
RUN python build.py install