FROM sagemath/sagemath:10.1

# Lambda container work directory
WORKDIR /var/task/

# Resolve the error in Lambda container:
# "/usr/local/bin/sage-entrypoint: line 8: exec: sage: not found"
RUN sudo chmod -R 777 /home/sage

# Absolute path to pip3
ENV PATH ${PATH}:/home/sage/sage/local/var/lib/sage/venv-python3.11.1/bin

RUN pip3 install boto3 \
 && sudo apt-get update \
 && sudo apt-get install -y jq

COPY ./src/* /var/task/
COPY ./sage-bin/* /home/sage/sage/src/bin/

RUN sudo chmod -R 755 /var/task/ \
 && sudo chmod 777 /home/sage/sage/src/bin/*

CMD ["./run.sh"]
