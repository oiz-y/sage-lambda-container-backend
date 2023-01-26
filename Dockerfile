FROM sagemath/sagemath

WORKDIR /var/task

RUN sudo chown sage:sage /var/task \
 && sudo chmod 777 /home/sage \
 && mkdir /home/sage/.sage \
 && sudo chmod 777 /home/sage/.sage

RUN sudo apt-get update \
 && sudo apt-get install -y jq

RUN /home/sage/sage/local/var/lib/sage/venv-python3.10.5/bin/pip3 install boto3

COPY ./Dockerfile ./
COPY ./src/* ./
COPY ./sagebin/* /home/sage/sage/src/bin/

CMD ["sh", "run.sh"]
