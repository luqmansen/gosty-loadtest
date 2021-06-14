FROM python:3.7.2

ADD . .

RUN pip install -r requirements.txt

EXPOSE 5557 5558 8089

RUN chmod 755 run.sh

ENTRYPOINT ["./run.sh"]
