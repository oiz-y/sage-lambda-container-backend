FROM sagemath/sagemath:9.7

WORKDIR /var/task

RUN sudo chown sage:sage /var/task \
 && /home/sage/sage/local/var/lib/sage/venv-python3.10.5/bin/pip3 install boto3

COPY ./sample.sh ./
COPY ./sample.sage ./

CMD ["sh", "sample.sh"]
