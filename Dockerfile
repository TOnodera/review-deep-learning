FROM mcr.microsoft.com/devcontainers/python:3.11

RUN apt-get update

# 必要なライブラリを追加
RUN pip install --upgrade pip && \
    pip install \
        numpy \
        pandas \
        matplotlib \
        scikit-learn \
        torch \
        tensorflow \
        jupyter \
        black \
        ruff \
        mypy

RUN pip install -U black jupyterlab-code-formatter && \
    jupyter server extension enable --py jupyterlab_code_formatter \
    --NotebookApp.allow_origin='https://colab.research.google.com' \
    --port=8888 \
    --NotebookApp.port_retries=0 \
    --NotebookApp.allow_credentials=True
   


        
WORKDIR /app

CMD ["sleep", "infinity"]