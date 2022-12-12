FROM python:3.10.6
COPY . .
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD uvicorn api.fast:app --port=$PORT --host=0.0.0.0
