#Please see README file for instructions.

FROM python:3.8
WORKDIR /opt/flask_insurance
COPY requirements.txt .
RUN pip3 install -r requirements.txt
RUN mkdir templates
COPY insurance.csv .
COPY model.py .
RUN python3.8 model.py
COPY index.html templates
COPY result.html templates
COPY flaskapp.py .
ENTRYPOINT python3.8 flaskapp.py
