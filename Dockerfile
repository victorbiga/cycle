FROM python

RUN pip3 install flask
COPY app.py /code/app.py

ENV FLASK_APP=app.py
WORKDIR /code
ENTRYPOINT ["flask", "run", "-h", "0.0.0.0"]
