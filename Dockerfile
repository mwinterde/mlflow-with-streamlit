FROM python:3.7
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt && rm -rf requirements.txt
COPY . .
CMD mlflow experiments create --experiment-name iris \
    && mlflow experiments create --experiment-name wine \
    && mlflow experiments create --experiment-name diabetes