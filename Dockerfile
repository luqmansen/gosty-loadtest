FROM python:3.8.6

ADD . .

RUN pip install -r requirements.txt

EXPOSE 5557 5558 8089

RUN chmod 755 run.sh

ENTRYPOINT ["./run.sh"]
