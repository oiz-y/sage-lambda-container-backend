FROM sagemath/sagemath:9.7

WORKDIR /var/task

RUN sudo chown sage:sage /var/task

COPY ./sample.sh ./
COPY ./sample.sage ./

CMD ["sh", "sample.sh"]
