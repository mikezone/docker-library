FROM ubuntu_20.04__pybase


RUN apt install wget -y
RUN wget https://www.python.org/ftp/python/3.9.10/Python-3.9.10.tgz
RUN tar -xzf Python-3.9.10.tgz
RUN cd Python-3.9.10
RUN autoconf
RUN ./configure --enable-optimizations
RUN make altinstall
RUN cd ../
RUN rm -rf Python-3.9.10*
RUN ln -s /usr/local/bin/python3.9  /usr/local/bin/python3 && \
    ln -s /usr/local/bin/python3.9  /usr/local/bin/python && \
    ln -s /usr/local/bin/pip3.9  /usr/local/bin/pip